building
buildAPIManagementButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'Manage APIs';
		model: self;
		action: #openAPIManagementMenu;
		help: 'Click to manage your APIs.';
		frame: (0.1 @ 0 corner: 1 @ 1);
		yourself