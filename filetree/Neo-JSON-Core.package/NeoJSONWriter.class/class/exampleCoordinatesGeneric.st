example
exampleCoordinatesGeneric
	<gtExample>
	^ (0 to: 4) collect: [ :each | { 'x' -> each . 'y' -> (each * 2) } asDictionary ] 