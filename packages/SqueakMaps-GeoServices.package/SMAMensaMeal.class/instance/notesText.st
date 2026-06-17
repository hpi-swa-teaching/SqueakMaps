accessing
notesText

	self hasNotes ifFalse: [^ ''].
	^ String streamContents: [:stream |
		self notes
			do: [:note | stream nextPutAll: note]
			separatedBy: [stream nextPutAll: ', ']]