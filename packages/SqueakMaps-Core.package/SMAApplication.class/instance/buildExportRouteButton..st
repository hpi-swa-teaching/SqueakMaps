building
buildExportRouteButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'Export';
		model: self;
		action: #exportRoute;
		help: 'Export the route to a gpx file';
		frame: (0.6 @ 0.77 corner: 0.8 @ 0.86);
		yourself