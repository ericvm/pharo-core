recursiveSelfRule
	^ RecursiveSelfRule ifNil: [ self initializeRecursiveSelfRule ]