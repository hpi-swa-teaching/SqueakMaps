as yet unclassified
testConcreteRouteTargetsCompareByPlace

	| place first second other |

	place := SMAPOIPrinter new.
	first := SMAConcreteRouteTarget on: place label: 'A'.
	second := SMAConcreteRouteTarget on: place label: 'B'.
	other := SMAConcreteRouteTarget on: SMAPOIPrinter new label: 'A'.

	self assert: first equals: second.
	self deny: first equals: other
