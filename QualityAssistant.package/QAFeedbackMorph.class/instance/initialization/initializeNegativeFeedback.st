initializeNegativeFeedback
	
	^ negative := IconicButton new
				target: self;
				labelGraphic: (Smalltalk ui icons iconNamed: #thumbsDownIcon);
				actionSelector: #fireDialogWithFeedback:;
				arguments: { false };
				color: Color transparent;
				helpText: 'This critic is not helpful';
				extent: 16 @ 16;
				borderWidth: 0;
				yourself