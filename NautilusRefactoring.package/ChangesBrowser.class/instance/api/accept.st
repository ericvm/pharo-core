accept
	self okToChange
		ifFalse: [ ^ self ].
	[ self pickedChanges do: [ :change | RBRefactoryChangeManager instance performChange: change content ] ] asJob
		title: 'Refactoring';
		run.
	window value delete