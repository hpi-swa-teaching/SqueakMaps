building directions bar
buildDirectionsBikeButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'Bike';
		model: self model;
		action: #switchToModeBike;
		state: #hasModeBike;
		help: 'Choose bike as mode of transportation for route calculation.';
		yourself