check: aMethod forCriticsDo: aCriticBlock ifNone: alternativeBlock

	aMethod methodClass isTrait ifTrue: [ ^ alternativeBlock value ].	

	(aMethod selfMessages reject: [ :each | (aMethod methodClass allSelectors includes: each) ]),
	(aMethod superMessages select: [ :each |
		aMethod methodClass superclass isNil or: [
		(aMethod methodClass superclass canUnderstand: each) not ] ]) 
	
	ifEmpty: alternativeBlock
	ifNotEmpty: [ :messages | messages do: [ :message |
			aCriticBlock cull: (ReStringBasedCritic
				for: aMethod
				by: self
				badString: message) ] ]