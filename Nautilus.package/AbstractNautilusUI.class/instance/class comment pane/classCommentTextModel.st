classCommentTextModel
	^ classCommentTextModel
		ifNil: [ 
			classCommentTextModel := RubScrolledTextModel new
				interactionModel: self;
				yourself ]