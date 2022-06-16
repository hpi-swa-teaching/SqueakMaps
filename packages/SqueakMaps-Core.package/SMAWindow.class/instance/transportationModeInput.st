accessing
transportationModeInput
	^ transportationModeInput ifNil: [transportationModeInput := #car]