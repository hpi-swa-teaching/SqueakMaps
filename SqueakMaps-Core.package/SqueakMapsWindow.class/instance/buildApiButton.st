build buttons and input fields
buildApiButton
	self apiKeyButton: (
		SimpleButtonMorph new 
			color: self defaultButtonColor; 
			label: 'set api key'; 
			target: [
				self api apikey: self apiKeyInputField contents asString. 
				self tiledMapMorph tileSource: self api aerialWithLabelsOnDemandTileSource
			]; 
			actionSelector: #value)