withParserStyler: aParser

	^ self new stylerDecorator: (GLMHighlighterTextStylerDecorator
			withParserStyler: aParser)