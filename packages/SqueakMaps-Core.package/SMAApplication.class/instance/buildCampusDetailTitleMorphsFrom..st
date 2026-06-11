building
buildCampusDetailTitleMorphsFrom: aString

	^ (self campusDetailTitleTextsFor: aString) collect: [:text |
		StringMorph new
			contents: text;
			yourself]