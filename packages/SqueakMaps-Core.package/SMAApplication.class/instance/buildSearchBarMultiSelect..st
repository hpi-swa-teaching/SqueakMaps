building
buildSearchBarMultiSelect: aBuilder

	^ aBuilder pluggableMultiSelectionListSpec new
        model: self;
        list: #items;
        getSelectionList: #isSelected:;
        setSelectionList: #isSelected:put:;
        help: 'pls help me.';
	  frame: (0 @ 0.5 corner: 1 @ 1);
	  yourself