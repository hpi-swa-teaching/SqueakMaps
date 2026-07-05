private
timeOut

	self stop.
	onTimeout ifNotNil: [onTimeout value]
