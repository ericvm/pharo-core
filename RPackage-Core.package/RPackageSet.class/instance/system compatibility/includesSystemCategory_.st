includesSystemCategory: categoryName
	^self packages anySatisfy: [ :each | 
		each includesSystemCategory: categoryName ]