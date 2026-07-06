accessing
campusDetailImagePathsFor: aCampusDetailTarget

	^ aCampusDetailTarget detailImagePaths reject: [:path |
		path isNil or: [path asString isEmpty]]
