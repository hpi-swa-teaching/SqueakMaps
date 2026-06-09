url
urlForPosition: aScaledPosition zoom: aZoom

	^ SMAGitAssetURL new path: 'assets/tiles/20/', aScaledPosition x asString, '/', aScaledPosition y asString, '.png'