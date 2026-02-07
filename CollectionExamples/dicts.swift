import Foundation

// 1. INITIALIZATION AND ADDING ELEMENTS ---------------------------- //

// Initializing an empty dictionary
var namesOfIntegers = [Int: String]()

// Adding key-value pairs
namesOfIntegers[16] = "sixteen"

// Initializing with a dictionary literal
var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
// ------------------------------------------------------------------ //




// 2. ACCESSING AND MODIFYING ELEMENTS ------------------------------ //

// Accessing a value for a key
if let airportName = airports["DUB"] {
    print("The name of the airport is \(airportName).")
}

// Updating a value
airports["YYZ"] = "TP International"
airports.updateValue("Dublin Airport", forKey: "DUB")

// Adding a new key-value pair
airports["LHR"] = "London Heathrow"
// ------------------------------------------------------------------ //




// 3. ITERATING OVER ELEMENTS ----------------------------------------- //

// Iterating over key-value pairs
for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}

// Iterating over keys or values
for airportCode in airports.keys {
    print("Airport code: \(airportCode)")
}

for airportName in airports.values {
    print("Airport name: \(airportName)")
}
// ------------------------------------------------------------------ //




// 4. REMOVING KEY-VALUE PAIRS -------------------------------------- //

// Removing a key-value pair
airports["CDG"] = nil  // CDG is now removed from the dictionary

// Removing a key-value pair if it exists
if let removedValue = airports.removeValue(forKey: "DUB") {
    print("\(removedValue) was removed.")
}
// ------------------------------------------------------------------ //




// 5. COUNTING AND CHECKING FOR VALUES ------------------------------ //

// Counting the number of key-value pairs
let dictionaryCount = airports.count  // Returns the number of key-value pairs

// Checking if the dictionary is empty
if airports.isEmpty {
    print("The airports dictionary is empty.")
}
// ------------------------------------------------------------------ //




// 6. WORKING WITH KEYS AND VALUES AS COLLECTIONS ------------------- //

// Accessing all keys or all values
let airportCodes = [String](airports.keys)
let airportNames = [String](airports.values)
// ------------------------------------------------------------------ //
