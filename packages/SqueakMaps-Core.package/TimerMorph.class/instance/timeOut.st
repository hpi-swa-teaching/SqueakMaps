as yet unclassified
timeOut

	self stop.
	onTimeout ifNotNil: [onTimeout value]
