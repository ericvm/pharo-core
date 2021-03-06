initialize
	| patterns pattern wellKnownGlobals |
	super initialize.
	patterns := OrderedCollection new.
	wellKnownGlobals := IdentityDictionary new.
	Smalltalk globals keysAndValuesDo: [ :name :object |
		object isBehavior ifFalse: [
			(wellKnownGlobals
				at: object class
				ifAbsentPut: [ IdentitySet new ])
					add: name ] ].
	self selectors do: [ :symbol |
		(RBBrowserEnvironment new referencesTo: symbol) classesAndSelectorsDo: [ :class :selector |
			class isMeta
				ifTrue: [
					class withAllSubclassesDo: [ :subclass |
						patterns add: (String
							streamContents: [ :stream | 
								stream
									nextPutAll: subclass theNonMetaClass name;
									nextPutAll: (self genericPatternForSelector: selector) ]) ] ]
				ifFalse: [
					wellKnownGlobals keysAndValuesDo: [ :global :names |
						(global includesBehavior: class) ifTrue: [
							names do: [ :each | 
								patterns add: (String streamContents: [ :stream | 
									stream 
										nextPutAll: each;
										nextPutAll: (self genericPatternForSelector: selector) ]) ] ] ] ] ] ].
	self matcher
		matchesAnyOf: patterns
		do: [ :node :answer | node ]