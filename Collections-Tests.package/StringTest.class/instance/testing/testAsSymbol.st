testAsSymbol

self assert: ('hel','lo' asSymbol) = #'hello'.
self assert: ('� � � � �' asSymbol)  = #'� � � � �'.
self assert: ('' asSymbol) = #''.
self assert: ('test' asSymbol) == #'test'. 