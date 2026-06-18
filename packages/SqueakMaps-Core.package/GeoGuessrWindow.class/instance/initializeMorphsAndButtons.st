initialization
initializeMorphsAndButtons
	
	self
		tiledMapMorph: SMATiledMapMorph new;
		pictureMorph: PictureMorph new;
		timerMorph: TimerMorph new;
		buildStartButton;
		buildEinloggenButton;
		buildInfoMorph;
		buildInfoMorph2