beRightToLeftWithOffset: anOffset

	self invalidateWith: [
		self triggerBrick hAlign: #right.
		self triggerBrick marginRight: anOffset.
		self foundationBrick bounds: (self foundationBrick bounds translateBy: (self width - self triggerBrick width - anOffset @ 0) negated ) ]