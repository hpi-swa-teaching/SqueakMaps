category management
buildPinOrCategoryMenu: aMenu

	| index selectedItem |
	index := self selectionList indexOf: true.
		(self isSelectedTypePinAt: index) ifTrue:[
			self buildPinMenu: aMenu for: (self getSelectedPinFromItemsAt: index).]
		ifFalse: [
				selectedItem := self class savedCategories detect: [:c | c title = (self items at: index)].
				self buildCategoryMenu: aMenu for: selectedItem].
	^ aMenu