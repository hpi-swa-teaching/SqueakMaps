category management
items
	
	| categryAndPinCollection |
	categryAndPinCollection := OrderedCollection new.
	self class savedCategories do:[:cat |
		categryAndPinCollection add: cat title.
		categryAndPinCollection addAll: (self selectPinsForCategory: cat)
		].
	^ categryAndPinCollection