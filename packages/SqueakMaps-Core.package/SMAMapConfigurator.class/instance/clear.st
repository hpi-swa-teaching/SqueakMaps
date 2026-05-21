displaying
clear

	self tiledMapMorph markers: Set new.
	self tiledMapMorph clearRoutes.
	self tiledMapMorph addRoute: SMARouteLine new.
	self tiledMapMorph layoutChanged