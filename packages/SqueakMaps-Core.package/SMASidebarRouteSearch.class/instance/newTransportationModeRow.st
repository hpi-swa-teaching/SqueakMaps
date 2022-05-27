submorphs - components
newTransportationModeRow

	^ self newRow
			addMorphBack: self carButton;
			addMorphBack: self bikeButton;
			addMorphBack: self walkButton;
			addMorphBack: self cancelButton;
			yourself.