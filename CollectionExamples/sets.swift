import Foundation

// 1. INITIALIZATION AND ADDING ELEMENTS ---------------------------- //

// Initializing an empty set
var genres = Set<String>()

// Adding elements
genres.insert("Jazz")
genres.insert("Classical")
genres.insert("Hip hop")

// Initializing with an array literal
var colors: Set = ["Red", "Green", "Blue"]
// ------------------------------------------------------------------ //




// 2. ACCESSING AND MODIFYING ELEMENTS ------------------------------ //

// Iterating over elements
for genre in genres {
    print(genre)
}
// ------------------------------------------------------------------ //




// 3. CHECKING FOR ELEMENTS ----------------------------------------- //

// Checking for existence
if genres.contains("Funk") {
    print("We've got Funk!")
}
// ------------------------------------------------------------------ //




// 4. SET OPERATIONS ------------------------------------------------ //

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let primeNumbers: Set = [2, 3, 5, 7]

// Intersection
let intersectSet = oddDigits.intersection(evenDigits)  // []

// Union
let unionSet = oddDigits.union(evenDigits)  // [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

// Subtracting
let subtractSet = oddDigits.subtracting(primeNumbers)  // [1, 9]

// Symmetric Difference
let symmetricDiffSet = oddDigits.symmetricDifference(primeNumbers)  // [1, 2, 9]
// ------------------------------------------------------------------ //




// 5. SET MEMBERSHIP AND EQUALITY ----------------------------------- //

// Subset, Superset, and Disjoint
let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

houseAnimals.isSubset(of: farmAnimals)  // true
farmAnimals.isSuperset(of: houseAnimals)  // true
farmAnimals.isDisjoint(with: cityAnimals)  // true
// ------------------------------------------------------------------ //




// 6. MODIFYIG SETS ------------------------------------------------- //

// Removing an item
if let removedGenre = genres.remove("Pop") {
    print("\(removedGenre) was removed.")
}

// Emptying the set
genres.removeAll()
// ------------------------------------------------------------------ //
