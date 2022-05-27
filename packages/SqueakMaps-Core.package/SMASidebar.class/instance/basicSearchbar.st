submorphs - search bars
basicSearchbar

	| searchBar |
	searchBar := PluggableTextMorphPlus new
		setText: '';
		hResizing: #spaceFill;
		layoutInset: 4;
		extent: (0@(TextStyle defaultFont height * 1.5 ));
		wrapFlag: true;
		wantsFrameAdornments: false;
		target: [self owner search];
		yourself.
	searchBar textMorph crAction: (MessageSend receiver: (self owner) selector: #search).
	^ searchBar