private
print: float specialOn: stream
	float isZero
		ifTrue: [ 
			stream nextPut: $0 ]
		ifFalse: [
			float isNaN 
				ifTrue: [ 
					stream nextPutAll: self nan ]
				ifFalse: [
					self print: float signOn: stream.
					stream nextPutAll: self infinite ] ]