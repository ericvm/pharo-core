sortClassesInCachedHierarchy: a b: b
	"Bullshitty name, Thanks Camillo"
	| aa bb minSize|
	aa := cachedHierarchy at: a.
	bb := cachedHierarchy at: b.
	
	minSize := aa size min: bb size.
	
	1 to: minSize do: [ :i | |compare|
		compare := (aa at: i) name compare: (bb at: i) name.
		compare ~~ 2
			ifTrue: [  ^ compare == 1 ]].
	^  aa size < bb size