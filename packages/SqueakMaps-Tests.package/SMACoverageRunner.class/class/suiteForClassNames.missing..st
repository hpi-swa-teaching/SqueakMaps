running - private
suiteForClassNames: classNames missing: missingNames
	| suite |
	suite := TestSuite new.
	classNames do: [:className |
		| testClass |
		testClass := Smalltalk at: className ifAbsent: [nil].
		testClass
			ifNil: [missingNames add: className]
			ifNotNil: [suite addTests: testClass suite tests]].
	^ suite
