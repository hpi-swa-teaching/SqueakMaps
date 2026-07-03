building
buildCategoryMultiSelectList: aBuilder
	
	^ aBuilder pluggableMultiSelectionListSpec new
		model: self;
		list: #items;
		menu: #getMenu:;
		getSelectionList: #isSelected:;
		setSelectionList: #isSelected:put:;
		help: 'Select categories or pins to show on the map.';
		frame: (0 @ 0.35 corner: 1 @ 0.70);
		yourself