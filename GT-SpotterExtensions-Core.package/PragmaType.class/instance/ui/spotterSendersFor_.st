spotterSendersFor: aStep
	<spotterOrder: 50>
	^ aStep listProcessor
		title: 'Senders';
		filter: GTFilterSubstring item: [ :filter :context | 
			self keyword senders do: [ :sender | 
				filter value: sender compiledMethod ] ]