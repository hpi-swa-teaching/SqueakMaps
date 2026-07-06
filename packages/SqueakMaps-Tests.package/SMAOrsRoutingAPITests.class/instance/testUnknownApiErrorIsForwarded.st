testing
testUnknownApiErrorIsForwarded

	| json |
	json := Dictionary newFrom: {
		'error' -> (Dictionary newFrom: {'code' -> 9999. 'message' -> 'unknown'}) }.
	self should: [orsAPI handleErrorWithJson: json] raise: Error
