A room inside a building, parsed from an OSM closed way tagged as `indoor=room`.

Holds the ordered list of `SMAPoint` nodes forming the room outline, a reference identifier (`ref`), a floor level, and references to POI IDs located in the room.

Rooms are rendered as yellow polygon overlays when the user selects the matching floor level. `routingEntranceCandidates` returns the room's door nodes for use by the routing subsystem.