example
exampleSimpleParsing
	<gtExample>
	| result |
	result := self fromString: self exampleSimpleJSON.
	self assert: result equals: self exampleSimple.
	^ result