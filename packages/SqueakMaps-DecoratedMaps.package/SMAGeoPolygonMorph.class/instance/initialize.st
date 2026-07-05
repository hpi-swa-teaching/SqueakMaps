initialization
initialize

	super initialize.

	geoPoints := OrderedCollection new.
	label := ''.
	fillColor := Color yellow muchLighter.
	outlineColor := Color orange.
	outlineWidth := self class defaultOutlineWidth.
	model := nil.
	showsLabel := false
