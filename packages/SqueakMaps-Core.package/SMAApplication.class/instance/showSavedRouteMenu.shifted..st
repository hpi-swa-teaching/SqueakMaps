building
showSavedRouteMenu: aMenu shifted: shifted

	"| menu |"
	"menu := MenuMorph new."
	aMenu
		 addTitle: 'Route Options';
		 add: 'Remove Route' target: self selector: #removeSavedRoute;
		 add: 'Rename Route' target: self selector: #renameSavedRoute.
	
	^ aMenu