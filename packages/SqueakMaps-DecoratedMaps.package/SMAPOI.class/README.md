Abstract base class for Points of Interest (POIs) parsed from OSM nodes.

Subclasses represent specific POI types (e.g., `SMAPOIPrinter`, `SMAPOIDrinkingWater`, `SMAPOIOffice`). Each POI carries a reference to the `SMAPoint` it is located at and the floor levels it belongs to. `shouldDrawOn:` controls visibility based on the current zoom level and selected floor.

New POI types are added by subclassing `SMAPOI` and overriding `displayName` and the OSM-tag matching in `SMAOSMMapBuilder`.