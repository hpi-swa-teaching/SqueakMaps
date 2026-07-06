testing - view swapper
testViewSwapperLayoutToggleAndReset
	| swapper picture map |
	picture := GGPictureMorph new.
	map := SMATiledMapMorph new.
	swapper := GGViewSwapper new.
	swapper setWindow: window picture: picture map: map.
	self assert: swapper window == window.
	self assert: swapper picture == picture.
	self assert: swapper map == map.
	self assert: swapper largeFrame notNil.
	self assert: swapper smallFrame notNil.
	self deny: swapper isMapLarge.

	swapper layOut.
	self assert: (window submorphs includes: picture).
	self assert: (window submorphs includes: map).
	swapper showMapLarge.
	self assert: swapper isMapLarge.
	self deny: picture coverMode.
	swapper showPictureLarge.
	self deny: swapper isMapLarge.
	self assert: picture coverMode.
	swapper toggle.
	self assert: swapper mapIsLarge.
	swapper reset.
	self deny: swapper mapIsLarge.
	self assert: picture coverMode
