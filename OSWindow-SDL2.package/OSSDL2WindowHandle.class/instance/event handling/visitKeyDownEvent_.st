visitKeyDownEvent: event
	| osEvent keysym |
	keysym := event keysym.
	osEvent := OSKeyDownEvent for: osWindow.
	osEvent scanCode: keysym scancode;
			symbol: keysym sym;
			position: self mousePosition;
			character: (self mapSpecialCharacter: keysym sym).
			
	self convertButtonState: SDL2 mouseState modState: keysym mod modifiers: osEvent modifiers.
	^ osEvent deliver.