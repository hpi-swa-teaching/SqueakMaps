initialization
initializeMorphsAndButtons
	
	self
		tiledMapMorph: SMATiledMapMorph new;
		pictureMorph: GGPictureMorph new;
		timerMorph: GGTimerMorph new;
		buildStartButton;
		buildBackButton;
		buildEinloggenButton;
		buildInfoMorph;
		buildInfoMorph2;
		buildQuitButton;
		buildSingleplayerButton;
		buildMultiplayerButton;
		buildLeaderboardButton;
		buildHomeQuitButton