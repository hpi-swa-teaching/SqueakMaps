building
buildManageAPIKeysButton: aBuilder

	^ aBuilder pluggableButtonSpec new
			label: 'API Keys';
			model: self;
			action: #apiKeyManagement;
			help: 'Click to manage your button expecations.';
			frame: (0.5 @ 0.5 corner: 1 @ 1)
			yourself