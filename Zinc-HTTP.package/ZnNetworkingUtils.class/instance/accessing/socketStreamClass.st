socketStreamClass
	^ socketStreamClass ifNil: [ socketStreamClass := SocketStream ]