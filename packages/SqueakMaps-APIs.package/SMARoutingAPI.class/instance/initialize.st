as yet unclassified
initialize

	super initialize.
	self contentSource: SMAJsonUrlReader new.
	self apiKey: '' asString