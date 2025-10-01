example
exampleCoordinatesCustomWriting
	<gtExample>
	^ String streamContents: [ :out |
		| writer |
		writer := self on: out.
		writer mapAllInstVarsFor: Point.
		writer nextPut: self exampleCoordinates ]