isResponsibleForCurrentPlatform
	^ super isResponsibleForCurrentPlatform and: [
		SystemVersion current version beginsWith: 'Pharo1.4' ]