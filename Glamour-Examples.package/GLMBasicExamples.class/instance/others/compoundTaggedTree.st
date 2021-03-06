compoundTaggedTree
	<glmBrowser: 'Tags' input: '#(window help home)'>
	"self new compoundTaggedTree openOn: #(window help home)"
	|browser |
	browser := GLMTabulator new.
	browser column: #one.
	browser transmit to: #one; andShow: [ :a | 
		a tree
			title: 'Combined Tags';
			tags: [:each | { {Smalltalk ui icons iconNamed: each asSymbol. each asString }}].
		a tree
			title: 'Image Tags';
			tags: [:each | {Smalltalk ui icons iconNamed: each asSymbol}].
		a tree
			title: 'Combined Tags - Filter by image';
			tags: [:each | 
				{ each == #help 
						ifTrue:[ {Smalltalk ui icons smallDeleteIcon. 'no ok' } ] 
						ifFalse:[ {Smalltalk ui icons smallOkIcon. each asString } ]} ];
			tagsFilter: [:each | 
				{ each == #help 
						ifTrue:[ Smalltalk ui icons smallDeleteIcon ] 
						ifFalse:[ Smalltalk ui icons smallOkIcon ] } ].
		a tree
			title: 'Combined Tags - Filter by label';
			tags: [:each | 
				{ {Smalltalk ui icons iconNamed: each asSymbol.
					each == #help ifTrue:[ 'no ok' ] ifFalse:[ 'ok' ]}} ];
			tagsFilter: [:each | 
				{ each == #help ifTrue:[ 'no ok' ] ifFalse:[ 'ok' ] } ] ].
	^ browser