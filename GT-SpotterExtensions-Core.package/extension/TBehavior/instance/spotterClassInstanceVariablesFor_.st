spotterClassInstanceVariablesFor: aStep
	<spotterOrder: 25>
	self isTrait ifTrue: [ ^ self ].
	aStep listProcessor
			title: 'Class instance variables';
			allCandidates: [ self class layout allSlots ];
			itemName: [:each | each name asString];
			filter: GTFilterSubstring