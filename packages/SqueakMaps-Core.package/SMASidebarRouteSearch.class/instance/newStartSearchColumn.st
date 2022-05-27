submorphs - components
newStartSearchColumn

	^ self newColumn
			addMorphBack: self startLabel;
			addMorphBack: self searchBar;
			yourself.