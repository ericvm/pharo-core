initializePresenter

	rulesModel whenSelectedItemChanged: [ :rule |
		(rule isNil or: [ rule isComposite ]) 
			ifFalse: [ criticModel resetSelection.
	 				criticModel rule: rule. 	
					criticModel setTextModelForNil].
			self setTitle: rule name]

