selectSecondSelection

	 ActiveEvent commandKeyPressed ifFalse: [ selectedIndexes removeAll ].
	self setIndex: self secondSelection