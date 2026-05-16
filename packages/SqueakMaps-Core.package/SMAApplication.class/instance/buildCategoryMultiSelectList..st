building
buildCategoryMultiSelectList: aBuilder
	
	^ aBuilder pluggableMultiSelectionListSpec new
		model: self;
		list: #items;
		getSelectionList: #isSelected:;
		setSelectionList: #isSelected:put:;
		help: 'Select categories to show on the map.';
		frame: (0 @ 0.58 corner: 1 @ 0.87);
		yourself
	
	