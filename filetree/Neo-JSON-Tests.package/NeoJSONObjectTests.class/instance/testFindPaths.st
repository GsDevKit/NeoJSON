testing
testFindPaths
	| json paths testingArray |
	json := self class exampleJSONSchema.
	testingArray := #((#'properties' #'street_address') (#'$defs' #'country')).
	
	paths := json findPaths: [ :object | object isDictionary and: [ object includesKey: #'$anchor' ] ].
	self deny: paths isEmpty.
	(paths asArray) do: [ :eachArray |
			self assert: (testingArray includes: eachArray) ].
	paths := json findPaths: [ :object | object isDictionary and: [ (object at: #'$anchor') = 'street_address' ] ].
	self assert: (testingArray includes: paths flattened).
	paths := json findPaths: [ :object | object isDictionary and: [ (object at: #'$anchor') = 'country' ] ].
	self assert: (testingArray includes: paths flattened).

	paths := json findPaths: [ :object | object isDictionary and: [ (object at: #'foo') = 'bar' ] ].
	self assert: paths isEmpty.
	
	paths := json findPaths: [ :object | object isDictionary and: [ object includesKey: #'type' ] ].
	self deny: paths isEmpty.
	paths do: [ :path |
		self assert: (#('string' 'object') includes: ((json atPath: path) at: #'type')) ].
		
	paths := json findPaths: [ :_ | true ].
	paths do: [ :each | 
		self assert: (json atPath: each) notNil ]
