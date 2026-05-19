toolbuilder
buildCodeContentsWith: builder

	^ builder pluggableCodePaneSpec new
		model: self;
		getText: #topicContents;
		setText: #accept:;
		menu: #codePaneMenu:shifted:;
		softLineWrap: false;
		frame: (LayoutFrame
			fractions: (0.3@0.0 corner: 1@1)
			offsets: (0@ builder inputFieldHeight corner: 0@0));
		yourself