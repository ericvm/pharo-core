onLostFocus: event

	focusedMorph ifNil: [ focusedMorph := event morph ]