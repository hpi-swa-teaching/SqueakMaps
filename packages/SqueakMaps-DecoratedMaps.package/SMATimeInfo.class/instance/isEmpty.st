testing
isEmpty

	^ label isNil or: [
		value isNil or: [
			label isEmpty or: [value isEmpty]]]