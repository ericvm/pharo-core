keyStrokeAction: anEvent

	^ self keyStrokeSelector 
		ifNil: [ false ]
		ifNotNil: [:s | (self model perform: s withEnoughArguments: { anEvent. ActiveHand shiftPressed}) = true ]