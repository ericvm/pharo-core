release
	"Prevent that syntaxError window lets a suspended compiler process running, when the window is closed."

	debugSession ifNotNil: [ debugSession terminate ].
	super release