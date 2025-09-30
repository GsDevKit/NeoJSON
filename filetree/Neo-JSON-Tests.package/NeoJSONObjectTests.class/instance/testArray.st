testing
testArray
	| jsonArray array |
	jsonArray := '[1,2,3]'.
	array := NeoJSONObject fromString: jsonArray.
	self assert: array asString equals: jsonArray.
	self assertCollection: array hasSameElements: #(1 2 3).
	array at: 1 add: 0.
	array at: #- add: 4.
	self assertCollection: array hasSameElements: #(0 1 2 3 4).
	array removeKey: 5.
	array removeKey: 1.
	self assertCollection: array hasSameElements: #(1 2 3)