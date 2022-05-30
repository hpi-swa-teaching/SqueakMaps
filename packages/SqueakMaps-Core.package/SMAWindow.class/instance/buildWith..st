building
buildWith: builder

	^ builder build: (builder pluggableWindowSpec new
			model: self;
			label: 'SqueakMaps';
			extent: 800@500;
			children: {
				self buildSidebar: builder.
				self buildMap: builder})