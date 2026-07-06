building
campusDetailTextsForPrefix: aString value: aValue

	^ SMATextWrapper new
		wrapLabel: aString
		value: aValue
		width: self campusDetailMaximumLineLength