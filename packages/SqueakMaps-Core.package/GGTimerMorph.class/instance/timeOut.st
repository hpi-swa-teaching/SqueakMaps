private
timeOut

	self stop.
	self onTimeout ifNotNil: [self onTimeout value]
