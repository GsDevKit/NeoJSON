example
exampleSimpleWriting
	<gtExample>
	| result |
	result := self exampleSimple printString.
	self assert: result equals: self exampleSimpleJSON.
	^ result