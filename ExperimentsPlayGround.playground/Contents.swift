import UIKit


// MARK: GENERICS
print("--------------- GENERICS -----------------")
code(for: "Numeric Additions") {
    // For Numberic Addions
    func add <T: Numeric>(arg1 : T, arg2: T ) {
    print(arg1 + arg2)
    }
    
    add(arg1: 50, arg2: 20)
    add(arg1: 22.5, arg2: 33.5)
    
}
code(for:  "Array and string") {
    // For Array and String Addions
    func add <T: RangeReplaceableCollection>(arg1 : T, arg2: T ) {
    print(arg1 + arg2)
    }
    add (arg1: "Ali", arg2: "Imran")
    add (arg1: ["1", "2", "3"], arg2: ["4", "5", "6"])
   // add (arg1: 5, arg2: 6)
}
print("--------------- ARC -----------------")
// MARK: ARC
class person {
    var name: String
    init(_ name : String) {
        debugPrint("init called")
        self.name = name
    }
    func printName() {
        debugPrint("Name is \(self.name)")
    }
    deinit {
        debugPrint("deinit function is called")
    }
}

// if condtiion is used because i am using playground so i've to trick the xcode to call the deinit function, in normal app it is autiomatically called, in below when when the if condition is ended there is no use of person class so deinit is called
if 1 == 1 {
    let personClass = person("Ali imran")
    personClass.printName()
}


// MARK: High order functions
print("--------------- High order Functions -----------------")
let array = [1, 2, 3, 4, 5, 6, 7, 8, 9]

// filter
// filtered the even numbers
code(for: "Filter Function", sampleCode: {
    let filtered = array.filter({return $0 % 2 == 0})
    print(filtered)
})
// sort
// sorted in descending order
code(for: "Sort Function", sampleCode: {
    let sorted = array.sorted(by: {
        (a, b) -> Bool  in
        return a > b
    })
    print(sorted)
})
// Map
// all the elements of array are multiplied by 2
code(for: "Map Function", sampleCode: {
    let mappedArray = array.map({
        return $0 * 2
    })
    print(mappedArray)
})
// Reduce
// Sum of all array elements
code(for: "Reduce Function", sampleCode: {
    let reducedArray  = array.reduce(1, {sum, number in sum + number} )
    print(reducedArray)
})


// MARK: Factorial function using reduce
code(for: "Factorial function using reduce", sampleCode: {
    let number = 5
    let factorial = (1...number).reduce(1, {multiply, number in multiply * number})
    print(factorial)
})
