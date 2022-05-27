submorphs - components
newDestinationSearchColumn

	^ self newColumn
			addMorphBack: self destinationLabel;
			addMorphBack: self secondSearchBar;
			yourself.