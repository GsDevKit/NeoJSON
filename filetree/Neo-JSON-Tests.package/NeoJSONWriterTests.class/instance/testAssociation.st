testing
testAssociation
	| writer |
	writer := [ :object | 
		String streamContents: [ :stream |
			(NeoJSONWriter on: stream) 
				for: Association do: [ :mapping |
					mapping mapAccessors: #(key value) ]; 
				nextPut: object ] ].
	self assert:(#( '{"key":"foo","value":42}'  '{"value":42,"key":"foo"}') includes: (writer value: 'foo' -> 42) ).
	self assert: (writer value: Association new) equals: '{}'