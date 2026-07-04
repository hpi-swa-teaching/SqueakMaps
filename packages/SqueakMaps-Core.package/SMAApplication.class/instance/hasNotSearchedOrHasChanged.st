route management
hasNotSearchedOrHasChanged

	(self hasSearched)
		ifFalse: [UIManager default inform: 'Please click Go before saving a route'.
				^ true].
	
	(self routes size +1 = (self hopLocations size))
		ifFalse: [UIManager default inform: 'There have been changes to your route. Please click Go before saving.'.
				^true].
	^ false