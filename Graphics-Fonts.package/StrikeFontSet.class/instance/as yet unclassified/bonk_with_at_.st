bonk: glyphForm with: bonkForm at: j
	"Bonking means to run through the glyphs clearing out black pixels
	between characters to prevent them from straying into an adjacent
	character as a result of, eg, bolding or italicizing"
	"Uses the bonkForm to erase at every character boundary in glyphs."

	| bb offset font x |
	font := (fontArray at: j).
	offset := bonkForm offset x.
	bb := BitBlt toForm: glyphForm.
	bb sourceForm: bonkForm; sourceRect: bonkForm boundingBox;
		combinationRule: Form erase; destY: 0.
	x := font xTable.
	(x isMemberOf: SparseLargeTable) ifTrue: [
		x base to: x size-1 do: [:i | bb destX: (x at: i) + offset; copyBits].
	] ifFalse: [
		1 to: x size-1 do: [:i | bb destX: (x at: i) + offset; copyBits].
	].
