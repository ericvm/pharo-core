smalltalkEditorMenuOn: aBuilder 
	"Specify the menu used when writing code. Try it with:
	(PragmaMenuBuilder 
		pragmaKeyword: 'smalltalkEditorMenu'
		model: nil) menu popUpInWorld
	"
	<contextMenu>
	<smalltalkEditorMenu>
	aBuilder
				item: 'Suggestions'; 
				selector: #smartSuggestions;
				target: self; 
				keyText: 't';
				order: 0.
	aBuilder items last withSeparatorAfter .
	
		(aBuilder item: #'Do it' translated) 
			keyText: 'd';
			selector: #doIt; 
			help: nil; 
			icon: Smalltalk ui icons smallDoItIcon.
		(aBuilder item: #'Print it' translated) 
			keyText: 'p';
			selector: #printIt; 
			help: nil; 
			icon: Smalltalk ui icons smallPrintItIcon.
		(aBuilder item: #'Inspect it' translated) 
			keyText: 'i';
			selector: #inspectIt; 
			help: nil; 
			icon: Smalltalk ui icons smallInspectItIcon.
		(aBuilder item: #'Basic Inspect it' translated) 
			keyText: 'I';
			selector: #basicInspectIt; 
			help: nil; 
			icon: Smalltalk ui icons smallInspectItIcon.
		(aBuilder item: #'Debug it' translated) 
			keyText: 'D';
			selector: #debugIt; 
			help: nil; 
			icon: Smalltalk ui icons smallDebugIcon.
		(aBuilder item: #'Profile it' translated) 
			selector: #tallyIt; 
			icon: Smalltalk ui icons smallDebugIcon; 
			withSeparatorAfter.
	(aBuilder item: #'Find...' translated) 
		keyText: 'f';
		selector: #find; 
		help: nil; 
		icon: Smalltalk ui icons smallFindIcon.
	(aBuilder item: #'Find again' translated) 
		keyText: 'g';
		selector: #findAgain; 
		help: nil; 
		icon: Smalltalk ui icons smallFindIcon.
	(aBuilder item: #'Code search...' translated) 
			selector: #shiftedTextPaneMenuRequest; 
			withSeparatorAfter.
	(aBuilder item: #'Do again' translated) 
		keyText: 'j';
		selector: #again; 
		help: nil; 
		icon: Smalltalk ui icons smallRedoIcon.
	(aBuilder item: #'Undo' translated) 
		keyText: 'z';
		selector: #undo; 
		help: nil; 
		icon: Smalltalk ui icons smallUndoIcon; 
		withSeparatorAfter.
	(aBuilder item: #'Copy' translated) 
		keyText: 'c';
		selector: #copySelection; 
		help: nil; 
		icon: Smalltalk ui icons smallCopyIcon.
	(aBuilder item: #'Cut' translated) 
		keyText: 'x';
		selector: #cut; 
		help: nil; 
		icon: Smalltalk ui icons smallCutIcon.
	(aBuilder item: #'Paste' translated) 
		keyText: 'v';
		selector: #paste; 
		help: nil; 
		icon: Smalltalk ui icons smallPasteIcon.
	(aBuilder item: #'Paste...' translated) 
		selector: #pasteRecent; 
		help: nil; 
		icon: Smalltalk ui icons smallCopyIcon; 
		withSeparatorAfter.
	(aBuilder item: #'Accept' translated) 
		keyText: 's';
		selector: #accept; 
		help: nil; 
		icon: Smalltalk ui icons smallOkIcon.
	(aBuilder item: #'Cancel' translated) 
		keyText: 'l';
		selector: #cancel; 
		help: nil; 
		icon: Smalltalk ui icons smallCancelIcon.