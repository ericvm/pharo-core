bindings

	^ bindings ifNil: [ bindings := self defaultBindings ]