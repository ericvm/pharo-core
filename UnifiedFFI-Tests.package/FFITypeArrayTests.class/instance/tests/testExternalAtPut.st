testExternalAtPut
	| externalArray |
	
	[	
		externalArray := (FFITypeArray ofType: 'int' size: 1) externalNew.
		externalArray at: 1 put: 42.
		self assert: (externalArray at: 1) equals: 42 ]
	ensure: [ 
		externalArray free ]