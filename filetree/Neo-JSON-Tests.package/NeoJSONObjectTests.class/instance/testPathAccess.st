testing
testPathAccess
	| data |
	data := NeoJSONObject fromString: '{"foo":1,"bar":2,"array":[{"a":1},{"b":2}]}'.
	self assert: (data atPath: #(array 1 a)) equals: 1.
	self assert: (data atPath: #(array 2 b)) equals: 2.
	self assert: (data atPath: #(missing 1)) equals: nil.
	data atPath: #(missing) put: 7.
	self assert: (data atPath: #(missing)) equals: 7.
	self assert: (data atPath: #(array 3)) equals: nil.
	data := NeoJSONObject fromString: '[{"c":1},{"c":2},{"c":3}]'.
	self assert: (data atPath: #(2 c)) equals: 2.
	self assert: (data atPath: #(10 c)) equals: nil.
	self assert: (data atPath: #(3 missing)) equals: nil.
	data atPath: #(3 missing) put: #found.
	self assert: (data atPath: #(3 missing)) equals: #found.
	(data at: 3) removeKey: #missing.
	self assert: (data atPath: #(3 missing)) equals: nil.
	data atPath: #(3 missing x) put: #found.
	self assert: (data atPath: #(3 missing x)) equals: #found.