freshListTab
	
	^ (Tab
		label: 'Fresh List'
		icon: nil
		retrievingBlock: [ 
			1 second asDelay wait.
			ListModel new
				items: (1 to: 50) asOrderedCollection;
				buildWithSpec ]
		actions: { (TabAction
			action: [ self halt ]
			icon: Smalltalk ui icons smallConfigurationIcon
			label: 'Halt!') })
		menu: [ :menu |
			menu
				add: 'Fubu' 
				target: self 
				selector: #halt ];
		yourself