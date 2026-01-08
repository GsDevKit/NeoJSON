testing
testArray
	| jsonArray array |
	jsonArray := '[-2,1,2,3]'.
	array := NeoJSONObject fromString: jsonArray.
	self assert: array asString equals: jsonArray.

	self assertCollection: array equals: (NeoJSONArray withAll: {-2. 1. 2. 3.}).
	array at: -2 add: 0.
	array at: #'-' add: 4.
	self assertCollection: array equals:  (NeoJSONArray withAll: {0. -2. 1. 2. 3. 4.}).
	array removeKey: 6.
	array removeKey: 1.
	self assertCollection: array equals: (NeoJSONArray withAll: {-2. 1. 2. 3.})