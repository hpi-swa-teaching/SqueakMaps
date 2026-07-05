initialization
initializeMorphsAndButtons
	
	self
		tiledMapMorph: SMATiledMapMorph new;
		pictureMorph: PictureMorph new;
		timerMorph: TimerMorph new;
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