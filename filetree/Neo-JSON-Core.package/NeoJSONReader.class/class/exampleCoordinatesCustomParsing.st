example
exampleCoordinatesCustomParsing
	<gtExample>
	| reader |
	reader := self on: self exampleCoordinatesJSON readStream.
	reader mapAllInstVarsFor: Point.
	reader for: #ArrayOfPoints customDo: [ :mapping |
		mapping listOfElementSchema: Point ].
	^ reader nextAs: #ArrayOfPoints 