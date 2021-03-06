initialize
	super initialize.
	self rewriteRule
		replace: 'Smalltalk allClasses'
			with: 'Smalltalk globals allClasses';
		replace: 'Smalltalk allClassesDo: `@statements'
			with: 'Smalltalk globals allClassesDo: `@statements';
		replace: 'Smalltalk allTraits'
			with: 'Smalltalk globals allTraits';
		replace: 'Smalltalk includes:`@statements'
			with: 'Smalltalk globals includes: `@statements';
		replace: 'Smalltalk flushClassNameCache'
			with: 'Smalltalk globals flushClassNameCache';
		replace: 'Smalltalk includesKey: `@statements'
			with: 'Smalltalk globals includesKey: `@statements'.