systemStartupMenuOn: aBuilder 
	<worldMenu>
	
	(aBuilder item: #SystemStartup)		 
		label: 'Startup';
		parent: #System;
		order: 2;
		help: 'System startup related';
		icon: Smalltalk ui icons scriptManagerIcon 