submorphs - components
newManagementRow

	^ self newRow
			addMorphBack: self apiButton;
			addMorphBack: self apiKeyManagementButton;
			addMorphBack: self pinManagementButton;
			yourself.