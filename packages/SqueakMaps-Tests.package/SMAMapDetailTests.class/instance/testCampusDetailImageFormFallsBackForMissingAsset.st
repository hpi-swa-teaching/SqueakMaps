as yet unclassified
testCampusDetailImageFormFallsBackForMissingAsset

	| application form placeholder |
	application := SMAApplication basicNew.

	form := application campusDetailImageFormFor: 'assets/img/does_not_exist_12345.png'.
	placeholder := application campusDetailPlaceholderImageForm.

	self assert: form isNil not.
	self assert: form extent equals: placeholder extent
