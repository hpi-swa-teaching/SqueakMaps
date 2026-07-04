A building parsed from an OSM closed way tagged as `building=*`.

Holds the ordered list of `SMAPoint` nodes that form the building outline, a human-readable name, a building-type tag, optional opening-hour time infos, and references to POI IDs located inside the building.

Buildings are rendered as coloured polygon overlays on the map and serve as routing targets: `SMARouteTargetResolver` uses `routingEntranceCandidates` to select the best entrance node.