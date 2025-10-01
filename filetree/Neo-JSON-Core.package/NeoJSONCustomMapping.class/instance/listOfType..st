mapping
listOfType: collectionClass
	"Set the reader to a block that will create an instance of collectionClass 
	using #streamContents: while reading a list of elements.
	Set the writer to write the list's elements."

	self reader: [ :jsonReader |
		collectionClass streamContents: [ :stream |
			jsonReader parseListDo: [ | element |
				element := jsonReader next.
				stream nextPut: element ] ] ].
	self writer: [ :jsonWriter :list | 
		jsonWriter writeListStreamingDo: [ :listWriter |
			list do: [ :each |
				listWriter writeElement: each ] ] ]