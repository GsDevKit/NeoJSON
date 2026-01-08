example
exampleMagnitudeClassHierarchy
	<gtExample>
	| builder |
	builder := [ :aClass | 
		NeoJSONObject new
			name: aClass name;
			superclass: aClass superclass name;
			instanceVariables: aClass instVarNames;
			category: aClass category;
			totalInstanceVariablesCount: aClass allInstVarNames size;
			methodCount: aClass methods size;
			totalMethodCount: aClass allMethods size;
			subclasses: (aClass subclasses 
								collect: [ :aSubclass | builder value: aSubclass ] 
								as: NeoJSONArray) ].
	^ builder value: Magnitude