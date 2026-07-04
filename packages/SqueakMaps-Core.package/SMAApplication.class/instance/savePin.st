pin management
savePin

	self categorizeSelectedPin ifNil: [ ^ self].
	(self class savedPins anySatisfy: [:p | p alias = self selectedPin alias]) ifTrue: [
		^ self inform: 'No duplicate names allowed.'].
	
	self isSelectedPinSaved ifFalse: [
		self class savedPins addIfNotPresent: self selectedPin].

	self changed: #buildSearchPinPanelChildren.
	self changed: #items.