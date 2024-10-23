/*
Searchcademy: Swift
In order to test a product, many companies use empty or “fake” data. Our company, Searchcademy, uses empty sparsely sorted data to test its awesome search engine. What exactly does that mean? Sparsely Sorted Data is data such that there is empty data in between the sorted values. For instance, an example dataset might look like this:
["Arthur", "", "", "", "", "Devan", "", "", "Elise", "", "", "", "Gary", "", "", "Mimi", "", "", "Parth", "", "", "", "Zachary"]
In this project, we will implement a modified version of an iterative binary search to search through a sparsely sorted dataset.
*/

func sparseSearch<T: Comparable>(for target: T, in arr: [T], isSparse: (T) -> Bool) -> Int? {
    var first = 0
    var last = arr.count - 1
    
    while first <= last {
        var middle = (first + last) / 2
        
        // If middle is sparse, look for the nearest non-sparse element
        if isSparse(arr[middle]) {
            var left = middle - 1
            var right = middle + 1
            
            while true {
                if right > last && left < first {
                    return nil
                } else if right <= last && !isSparse(arr[right]) {
                    middle = right
                    break
                } else if left >= first && !isSparse(arr[left]) {
                    middle = left
                    break
                }
                right += 1
                left -= 1
            }
        }
        
        // Perform binary search comparison
        if arr[middle] == target {
            return middle
        } else if target < arr[middle] {
            last = middle - 1
        } else {
            first = middle + 1
        }
    }
    
    return nil
}

// Test with a string array
let stringArray = ["apple", "", "", "banana", "", "", "carrot", "", "date", ""]
let isSparseString: (String) -> Bool = { $0 == "" }
if let index = sparseSearch(for: "banana", in: stringArray, isSparse: isSparseString) {
    print("Found 'banana' at index \(index)")
} else {
    print("'banana' not found")
}

// Test with an integer array
let intArray = [1, 0, 0, 3, 0, 5, 0, 7, 0, 9]
let isSparseInt: (Int) -> Bool = { $0 == 0 }
if let index = sparseSearch(for: 5, in: intArray, isSparse: isSparseInt) {
    print("Found 5 at index \(index)")
} else {
    print("5 not found")
}
