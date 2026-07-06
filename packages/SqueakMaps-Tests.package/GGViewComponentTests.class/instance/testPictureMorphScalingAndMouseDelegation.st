testing - picture
testPictureMorphScalingAndMouseDelegation
	| picture form handler event oldBounds |
	picture := GGPictureMorph new.
	form := Form extent: 40 @ 20 depth: 32.
	picture extent: 100 @ 100.
	picture unscaledImage: form.
	self assert: picture unscaledImage == form.
	self assert: picture image notNil.
	self assert: picture picture notNil.
	self assert: picture loader notNil.
	self assert: picture coverMode.
	picture coverMode: false.
	picture updateScaledImage.
	self deny: picture coverMode.
	oldBounds := picture picture bounds.
	picture layoutChanged.
	self assert: picture picture bounds equals: oldBounds.
	picture image: form.
	self assert: picture image == form.
	picture showImage: '/geoguesser_start_screen.png'.
	self assert: picture image notNil.

	handler := SMATestGameHandler new.
	event := SMATestMouseEvent new position: 10 @ 10; yourself.
	picture gameHandler: handler.
	self assert: picture gameHandler == handler.
	self assert: (picture handlesMouseDown: event).
	picture mouseDown: event.
	self assert: handler lastEvent == event
