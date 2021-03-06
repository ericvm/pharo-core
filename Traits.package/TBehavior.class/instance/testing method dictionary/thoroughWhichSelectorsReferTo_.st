thoroughWhichSelectorsReferTo: literal
	"Answer a set of selectors whose methods access the argument as a 
	literal. Dives into the compact literal notation, making it slow but 
	thorough "
	| selectors special byte |
	"for speed we check the special selectors here once per class"
	special := Smalltalk
		hasSpecialSelector: literal
		ifTrueSetByte: [ :value | byte := value ].
	selectors := OrderedCollection new.
	self selectorsAndMethodsDo: [ :sel :method |
			((method refersToLiteral: literal) or: [special and: [method scanFor: byte]]) ifTrue: [selectors add: sel]].
	^ selectors