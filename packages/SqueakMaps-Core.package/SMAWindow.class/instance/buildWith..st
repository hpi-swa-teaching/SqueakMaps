building
buildWith: builder

	^ builder build: (builder pluggableWindowSpec new
			model: self;
			label: 'SqueakMaps';
			children: {
				self buildSidebar: builder.
				self buildMap: builder})