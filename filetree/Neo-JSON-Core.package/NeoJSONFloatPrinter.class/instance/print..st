printing
print: float
	^ String new: 16 streamContents: [ :out | 
			self print: float on: out ]