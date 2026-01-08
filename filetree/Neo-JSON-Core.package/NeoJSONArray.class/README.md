I am NeoJSONArray.
I am an Array.

I am often used in combination with NeoJSONObject, to represent the result of parsing JSON.
 
 I support path access for nested instances of me, using #atPath: and #atPath:put:
 
Used in its generic way, NeoJSONParser will return Arrays and Dictionaries.
Returning NeoJSONArrays and NeoJSONObjects, simple subclasses, allows to add some convenience methods.
