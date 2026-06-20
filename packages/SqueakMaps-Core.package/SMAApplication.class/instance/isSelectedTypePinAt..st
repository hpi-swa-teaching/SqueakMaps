category management
isSelectedTypePinAt: anIndex

	 ^ (self items at: anIndex) beginsWith: self hierarchicalPinListPrefix
