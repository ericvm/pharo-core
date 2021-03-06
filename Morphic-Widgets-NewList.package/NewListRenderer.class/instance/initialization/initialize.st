initialize

	super initialize.
	
	wantsSteps := false.
	listSource := nil asValueHolder.
	itemHeight := nil asValueHolder.
	maxWidth := 0 asValueHolder.
	hasHeader := false asValueHolder.
	potentialDropIndex := 0 asValueHolder.
	steppingTime := 100.
	mouseDownIndex := 0 asValueHolder.
	listSource whenChangedDo: [:e | 
		itemHeight value: e itemHeight.
		e whenItemsChangedDo: [ maxWidth value: 0 ]].
	potentialDropIndex whenChangedDo: [:new :old | self updateRectFor: new and: old ].
	mouseDownIndex whenChangedDo: [:new :old |
		(old ~~ 0 and: [ new ~~ 0 ]) 
			ifTrue: [ self updateRectFor: old and: new ]
			ifFalse: [
				old isZero ifFalse: [self updateRectFor: old ].
				new isZero ifFalse: [self updateRectFor: new ]]].