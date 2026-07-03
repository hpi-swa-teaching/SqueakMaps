building
buildWith: aBuilder 

	^ aBuilder build: (aBuilder pluggableWindowSpec new
		model: self model;
		label: 'SqueakMaps';
		extent: 800 @ 500;
		children: {
			self buildSidebar: aBuilder.
			self buildMap: aBuilder};
		yourself)