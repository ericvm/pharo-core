defaultOnRecursionError
	^ [ :aProcessor :anExample | 
		aProcessor handleRecursionErrorFor: anExample.
		nil ]