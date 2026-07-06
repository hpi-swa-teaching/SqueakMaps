accessing
form
	^ form ifNil: [form := Form extent: 16 @ 16 depth: 32]
