running
suiteForClassNames: classNames

	| suite |
	suite := TestSuite new.
	classNames do: [:className |
		suite addTests: (Smalltalk at: className) suite tests].
	^ suite
