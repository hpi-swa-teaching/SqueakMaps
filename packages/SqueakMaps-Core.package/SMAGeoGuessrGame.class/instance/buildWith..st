building
buildWith: aBuilder

	^ aBuilder build: (aBuilder pluggableWindowSpec new
		model: self;
		label: 'GeoGuessr';
		extent: 700 @ 500;
		children: {
			self buildMap: aBuilder.
			self buildOverlay: aBuilder};
		yourself)
