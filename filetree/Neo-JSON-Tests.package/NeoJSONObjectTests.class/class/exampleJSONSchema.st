accessing
exampleJSONSchema
	^ NeoJSONObject fromString: '{
  "$id" : "https://example.com/schemas/address",
  "type" : "object",
  "properties" : {
    "street_address" : { "$anchor" : "street_address", "type" : "string" },
    "city" : { "type" : "string" },
    "state" : { "type" : "string" }
  }, 
  "required" : ["street_address", "city", "state"],
  "$defs" : {
    "country" : { "type" : "object", "$anchor" : "country", "enum" : ["us","canada","gb"] }
  }
}'