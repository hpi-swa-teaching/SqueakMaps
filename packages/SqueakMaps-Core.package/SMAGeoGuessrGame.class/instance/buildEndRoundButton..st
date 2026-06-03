building
buildEndRoundButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'Runde beenden';
		model: self;
		action: #endRound;
		frame: (0.25 @ 0.45 corner: 0.75 @ 0.65);
		yourself
