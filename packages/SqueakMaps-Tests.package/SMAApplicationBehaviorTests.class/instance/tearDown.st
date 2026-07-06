running
tearDown

	SMAApplication savedPins: savedPinsBefore.
	application ifNotNil: [application tiledMapMorph ifNotNil: [:map | map delete]].
	super tearDown
