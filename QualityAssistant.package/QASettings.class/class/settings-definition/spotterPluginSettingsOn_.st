spotterPluginSettingsOn: aBuilder
	<systemsettings>
	(aBuilder setting: #spotterPlugin)
		order: 5;
		target: self;
		label: 'Spotter Plugin' translated;
		description: 'Enable GTSpotter plugin which shows a group with critics and allows to preview them.';
		default: false;
		parent: #qualityAssistant.