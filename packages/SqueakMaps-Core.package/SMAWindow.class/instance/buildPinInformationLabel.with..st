building
buildPinInformationLabel: aBuilder with: aLabel

	"^ aBuilder pluggablePanelSpec new
		model: self;
       children: aLabel;
       frame: (0@3 corner: 0@1);
       yourself."

^ aBuilder pluggableTextSpec new
			model: self;
			getText: #getPinInformationLabel;
			horizontalResizing: #shrinkWrap;
			readOnly: true;
			frame: (0@0 corner: 1@1);
			yourself
