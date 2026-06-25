building
buildCampusDetailPanel: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self;
		children: #buildCampusDetailPanelChildren;
		layout: #proportional;
		frame: self campusDetailPanelFrame;
		yourself