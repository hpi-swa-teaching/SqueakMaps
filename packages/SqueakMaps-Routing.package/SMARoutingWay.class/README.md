An OSM way parsed specifically for routing purposes.

Holds an ordered list of OSM node IDs that form the way, together with the set of floor levels on which the way is accessible. Used by `SMAOSMRoutingGraphBuilder` to construct routing graph edges.