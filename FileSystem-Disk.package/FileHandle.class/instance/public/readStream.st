readStream
	^ (FileStream onHandle: self)
		ifNil: [ self streamError ]
	