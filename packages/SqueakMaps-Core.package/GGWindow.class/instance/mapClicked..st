guessing
mapClicked: anEvent

    (self viewSwapper isMapLarge not
        and: [tiledMapMorph bounds containsPoint: anEvent position])
            ifTrue: [^ self viewSwapper toggle].

    (self viewSwapper isMapLarge
        and: [pictureMorph bounds containsPoint: anEvent position])
            ifTrue: [^ self viewSwapper toggle].

    self placeGuessAt: anEvent position