//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let array = [3,3,2,1,3]

var set = NSCountedSet(array: array)
var dictionary = [Int:Int]()

for item in set {
    let item = item as! Int
    let count = set.count(for: item)
    dictionary.updateValue(count, forKey: item)
}

let highestCount = dictionary.sorted(by: {
    $0.0.value > $0.1.value
})[0].key


dictionary.removeValue(forKey: highestCount)

let result = dictionary.reduce(0, {
    $0 + $1.value
})

print(result)