example
exampleNestedRoundtrip
	<gtExample>
	| json result|
	json := self exampleNested printString.
	result := self fromString: json.
	self assert: result equals: self exampleNested.
	^ result