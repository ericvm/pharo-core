copyWith: anException
	^ self class new 
		instVarNamed: #exceptions put: (exceptions copyWith: anException);
		yourself