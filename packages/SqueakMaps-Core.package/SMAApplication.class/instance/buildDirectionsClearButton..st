building
buildDirectionsClearButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'Route löschen';
		model: self;
		action: #clearRoute;
		help: 'Aktuelle Route entfernen.';
		frame: (0 @ 0.57 corner: 1 @ 0.65);
		yourself