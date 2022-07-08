initialize-release
initialize

	super initialize.
	self contentSource: SMAJsonUrlReader new.