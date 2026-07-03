building
buildWith: aBuilder
	
	self applicationBuilder: (SMAApplicationBuilder model: self builder: aBuilder).
	
	^  self applicationBuilder buildWith: aBuilder
