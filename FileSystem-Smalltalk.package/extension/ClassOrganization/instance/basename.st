basename
	^ self subject isMeta
		ifTrue: [ 'class' ]
		ifFalse: [ 'instance']