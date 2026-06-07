building
findOptimalRouteWithWaitingScreen
    | waitingScreen label mapBounds |

    mapBounds := tiledMapMorph bounds.

    "Create overlay covering the entire map"
    waitingScreen := Morph new
        color: (Color gray alpha: 0.6);
        extent: mapBounds extent;
        position: mapBounds origin;
        yourself.

    "Add centered label on top"
    label := TextMorph new
        contents: 'Calculating route...';
        yourself.
    waitingScreen addMorph: label.
    label center: waitingScreen center.

    self currentWorld addMorph: waitingScreen.

    [
        self findOptimalRoute.

        WorldState addDeferredUIMessage: [
            waitingScreen delete.
        ].
    ] fork.