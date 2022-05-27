submorphs - search bars
basicSearchbar

	^ PluggableTextMorphPlus new
		setText: '';
		hResizing: #spaceFill;
		layoutInset: 4;
		wrapFlag: true;
		wantsFrameAdornments: false;
		yourself