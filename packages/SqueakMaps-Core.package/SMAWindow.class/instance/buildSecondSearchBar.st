build buttons and input fields
buildSecondSearchBar

	self secondSearchBar: (PluggableTextMorphPlus new
						balloonText: 'Enter Destination Location';
						setText: '';
						wrapFlag: true;
						name: 'Second Search Bar';
						wantsFrameAdornments: false;
						yourself).
	self secondSearchBar textMorph crAction: (MessageSend receiver: self selector: #searchMultipleLocations)