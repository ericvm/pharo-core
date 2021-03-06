initialize   "self initialize"

	| order |
	
	self initializeTypeTable.
	
	AsciiOrder := (0 to: 255) as: ByteArray.

   "map char and char asLower (Lowercase Latin1 stays in the Latin1 range, uppercase not.)"
	CaseInsensitiveOrder := AsciiOrder copy.
    (0 to: 255) do:[ :v |
            | char lower |
            char := v asCharacter.
            lower := char asLowercase.
            CaseInsensitiveOrder at: lower asciiValue + 1 put: (CaseInsensitiveOrder at: char asciiValue + 1) ].

	"Case-sensitive compare sorts space, digits, letters, all the rest..."
	CaseSensitiveOrder := ByteArray new: 256 withAll: 255.
	order := -1.
	' 0123456789' do:  "0..10"
		[:c | CaseSensitiveOrder at: c asciiValue + 1 put: (order := order+1)].
	($a to: $z) do:     "11-64"
		[:c | CaseSensitiveOrder at: c asUppercase asciiValue + 1 put: (order := order+1).
		CaseSensitiveOrder at: c asciiValue + 1 put: (order := order+1)].
	1 to: CaseSensitiveOrder size do:
		[:i | (CaseSensitiveOrder at: i) = 255 ifTrue:
			[CaseSensitiveOrder at: i put: (order := order+1)]].
	order = 255 ifFalse: [self error: 'order problem'].

	"a table for translating to lower case"
	LowercasingTable := String withAll: (Character allByteCharacters collect: [:c | c asLowercase]).

	"a table for translating to upper case"
	UppercasingTable := String withAll: (Character allByteCharacters collect: [:c | c asUppercase]).

	"a table for testing tokenish (for fast numArgs)"
	Tokenish := String withAll: (Character allByteCharacters 
		collect: [:c | c tokenish ifTrue: [ c ] ifFalse: [ $~ ]]).

	"CR and LF--characters that terminate a line"
	CSLineEnders := CharacterSet crlf.

 	"separators and non-separators"
	CSSeparators := CharacterSet separators.
	CSNonSeparators := CSSeparators complement.
	
	"a table for exchanging cr with lf and vica versa"
	CrLfExchangeTable := Character allByteCharacters collect: [ :each |
		each = Character cr 
			ifTrue: [ Character lf ]
			ifFalse: [ 
				each = Character lf
					ifTrue: [ Character cr ]
					ifFalse:[ each ]]]