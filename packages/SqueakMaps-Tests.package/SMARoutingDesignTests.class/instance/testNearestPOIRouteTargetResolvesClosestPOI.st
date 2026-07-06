as yet unclassified
testNearestPOIRouteTargetResolvesClosestPOI

	| start near far water target resolved |

	start := SMAPOIDrinkingWater new
		lat: 0;
		lon: 0;
		yourself.
	near := SMAPOIPrinter new
		lat: 1;
		lon: 0;
		yourself.
	far := SMAPOIPrinter new
		lat: 5;
		lon: 0;
		yourself.
	water := SMAPOIDrinkingWater new
		lat: 0.5;
		lon: 0;
		yourself.
	target := SMANearestPOIRouteTarget for: SMAPOIPrinter.
	resolved := target
		resolveFrom: (SMAConcreteRouteTarget on: start label: 'Start')
		among: { far. water. near }.

	self assert: resolved place equals: near.
	self assert: resolved label equals: target label
