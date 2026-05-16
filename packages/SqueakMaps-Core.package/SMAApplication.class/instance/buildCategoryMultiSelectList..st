building
buildCategoryMultiSelectList: aBuilder
	
	^ aBuilder pluggablePanelSpec new
		model: self;
		children: {
			self buildCategoryLabel: aBuilder 
			with: #getCategoryLabel 
			byPosition: (0 @ 0 corner: 1 @ 0.2).
		
			aBuilder pluggableMultiSelectionListSpec new
			model: self;
			list: #items;
			getSelectionList: #isSelected:;
			setSelectionList: #isSelected:put:;
			help: 'Select categories to show on the map.';
			frame: (0 @ 0.21 corner: 1 @ 1);
			yourself
		};
	frame: (0 @ 0.55 corner: 1 @ 0.87);
	yourself
	
	