testing
testFindPaths
	| json paths |
	json := self class exampleJSONSchema.
	
	paths := json findPaths: [ :object | object isDictionary and: [ object includesKey: #'$anchor' ] ].
	self deny: paths isEmpty.
	self assert: paths asArray equals: #((properties street_address) (#'$defs' #'country')).
	self assert: ((json atPath: paths first) at: #'$anchor') equals: 'street_address'.
	self assert: ((json atPath: paths second) at: #'$anchor') equals: 'country'.
			
	paths := json findPaths: [ :object | object isDictionary and: [ (object at: #'foo') = 'bar' ] ].
	self assert: paths isEmpty.
	
	paths := json findPaths: [ :object | object isDictionary and: [ object includesKey: #'type' ] ].
	self deny: paths isEmpty.
	paths do: [ :path |
		self assert: (#('string' 'object') includes: ((json atPath: path) at: #'type')) ].
		
	paths := json findPaths: [ :_ | true ].
	paths do: [ :each | 
		self assert: (json atPath: each) notNil ]
