import Foundation

// 1. INITIALIZATION AND ADDING ELEMENTS ---------------------------- //

// Initializing an empty array
var numbers = [Int]()

// Adding elements
numbers.append(1)
numbers += [2, 3, 4]

// Initializing with default values
var repeatArray = Array(repeating: "Swift", count: 3)  // ["Swift", "Swift", "Swift"]
// ------------------------------------------------------------------ //




// 2. ACCESSING AND MODIFYING ELEMENTS ------------------------------ //

// Accessing elements
let firstNumber = numbers[0]  // 1

// Modifying elements
numbers[0] = 10  // [10, 2, 3, 4]

// Inserting at a specific index
numbers.insert(5, at: 2)  // [10, 2, 5, 3, 4]
// ------------------------------------------------------------------ //




// 3. ITERATING OVER ELEMENTS -------------------------------------- //

for number in numbers {
    print(number)
}

// With index
for (index, number) in numbers.enumerated() {
    print("Item \(index): \(number)")
}
// ------------------------------------------------------------------ //




// 4. ARRAY SLICING AND COMBINING ----------------------------------- //

// Slicing
let slice = numbers[1..<3]  // [2, 5]

// Combining
let combinedArray = numbers + slice
// ------------------------------------------------------------------ //




// 5. REMOVING ELEMENTs --------------------------------------------- //

// Removing at a specific index
numbers.remove(at: 2)  // Removes '5'

// Removing the last element
numbers.removeLast()
// ------------------------------------------------------------------ //




// 6. COUNTING AND CHECKING VALUES ---------------------------------- //

// Counting elements
let count = numbers.count  // 3

// Checking for existence
let containsThree = numbers.contains(3)  // true or false
// ------------------------------------------------------------------ //
