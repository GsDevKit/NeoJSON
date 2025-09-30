example
exampleCoordinates
	<gtExample>
	^ (0 to: 4) 
		collect: [ :each | self new x: each; y: each * 2 ]
		as: NeoJSONArray