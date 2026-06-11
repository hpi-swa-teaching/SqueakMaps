guessing
mapClicked: anEvent

    (mapIsLarge not
        and: [tiledMapMorph bounds containsPoint: anEvent position])
            ifTrue: [^ self swapViews].

    (mapIsLarge
        and: [pictureMorph bounds containsPoint: anEvent position])
            ifTrue: [^ self swapViews].

    self placeGuessAt: anEvent position