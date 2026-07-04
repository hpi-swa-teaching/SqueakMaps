A geo-referenced OSM node with a latitude, longitude, and optional OSM node ID.

Used throughout the map model to represent both map geometry vertices (building outlines, room outlines, routing graph nodes) and specific locations (POI positions, routing start/end points).

Carries optional semantic tags: `entrance`, `door` (and their boolean accessors `isEntranceNode`, `isDoorNode`, `isMainEntranceNode`) used by the routing subsystem to find the best entry point into a building or room.

`isDirectRoutingPoint` returns `true`, indicating that a point can be used directly as a routing source or destination without further resolution.