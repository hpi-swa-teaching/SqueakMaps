testing
testTextWrapperHandlesEmptyLongAndExactFitValues

	| wrapper emptyLines longLines fitLines |

	wrapper := SMATextWrapper new.
	emptyLines := wrapper wrapLabel: 'Info: ' value: '' width: 10.
	longLines := wrapper
		wrapLabel: 'Info: '
		value: 'Supercalifragilistic'
		width: 10.
	fitLines := wrapper wrapLabel: 'Info: ' value: 'abc' width: 9.

	self assert: emptyLines asArray equals: #('Info: ').
	self assert: longLines first equals: 'Info: '.
	self assert: longLines second equals: '      Supercalifragilistic'.
	self assert: fitLines asArray equals: #('Info: abc')
