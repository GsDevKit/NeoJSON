testing
testFindPath
	| json path |
	json := self class exampleJSONSchema.
	
	path := json findPath: [ :object | object isDictionary and: [ (object at: #'$anchor') = 'street_address' ] ].
	self deny: path isNil.
	self assert: path equals: #(properties street_address).
	self assert: ((json atPath: path) at: #'$anchor') equals: 'street_address'.
		
	path := json findPath: [ :object | object isDictionary and: [ (object at: #'foo') = 'bar' ] ].
	self assert: path isNil.
	
	path := json findPath: [ :object | object isDictionary and: [ (object at: #'$anchor') = 'country' ] ].
	self deny: path isNil.
	self assert: path equals: #(#'$defs' #'country').
	self assert: ((json atPath: path) at: #'$anchor') equals: 'country'.
	
	json := NeoJSONObject new at: #'$anchor' put: 'top'; yourself.
	self 
		assert: (json findPath: [ :object | object isDictionary and: [ (object at: #'$anchor') = 'top' ] ])
		equals: #(())