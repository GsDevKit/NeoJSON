example
exampleSimpleUsage
	<gtExample>
	| simple |
	simple := NeoJSONObject exampleSimple.
	self assert: simple foo equals: (simple at: #foo).
	self assert: (simple foo: -1) equals: (simple at: #foo put: -1; yourself).
	self assert: (simple includesKey: #baz) not.
	self assert: simple baz equals: nil.
	^ simple