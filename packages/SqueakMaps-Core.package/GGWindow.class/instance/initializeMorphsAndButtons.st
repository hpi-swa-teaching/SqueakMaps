initialization
initializeMorphsAndButtons
	
	self
		tiledMapMorph: SMATiledMapMorph new;
		pictureMorph: GGPictureMorph new;
		timerMorph: GGTimerMorph new;
		buildInfoMorph;
		buildInfoMorph2;
		buildSingleplayerButton;
		buildMultiplayerButton;
		buildLeaderboardButton;
		buildHomeQuitButton.
	self controlBar: (GGControlBar new setWindow: self with: self gameOrchestrator)