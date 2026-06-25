building
buildCampusDetailRouteButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'Route hierhin';
		model: self;
		padding: 8;
		frame: (LayoutFrame fractions: (0.5 @ 1 corner: 1 @ 1)
			offsets: (0 @ -60 corner: 0 @ 0));
		action: #routeToSelectedDetailTarget;
		help: 'Route zu diesem Ort berechnen.';
		yourself
