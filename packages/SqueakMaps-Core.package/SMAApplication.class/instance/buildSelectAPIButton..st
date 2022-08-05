building
buildSelectAPIButton: aBuilder

	^ aBuilder pluggableButtonSpec new
			label: 'Select API';
			model: self;
			action: #requestApiSelection;
			help: 'Click get a list of selectable APIs.';
			frame: (0 @ 0.5 corner: 0.5 @ 1);
			yourself