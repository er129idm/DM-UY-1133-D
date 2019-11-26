
/// JSON Object
var jsonThing = {
	"myArray": [1,2,3],
	"myBoolean": true,
	"myColor": "#82b92c",
	"myNull": null,
	"myNumber": 123,
	"myObject": {
		"a": "b",
		"c": "d",
		"e": "f"
	},
	"myString": "Hello World"
};

/// Adding new fields to JSON
// jsonThing["newString"] = "Supdawg.";

/// Display
console.log(jsonThing["newString"]);
