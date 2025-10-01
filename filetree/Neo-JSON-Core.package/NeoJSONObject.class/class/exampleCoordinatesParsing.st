example
exampleCoordinatesParsing
	<gtExample>
	| result |
	result := self fromString: NeoJSONReader exampleCoordinatesJSON.
	self assert: result equals: self exampleCoordinates.
	^ result