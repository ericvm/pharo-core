iconFor: anEntry
	"Answer the icon to use for the directory entry."

	^ anEntry isDirectory
		ifTrue: [ Smalltalk ui icons smallOpenIcon ]
		ifFalse: [(self isImageFile: anEntry basename)
					ifTrue: [ Smalltalk ui icons smallPaintIcon]
					ifFalse: [ Smalltalk ui icons smallLeftFlushIcon]]