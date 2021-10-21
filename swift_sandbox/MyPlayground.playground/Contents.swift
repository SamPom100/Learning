import Cocoa

//variables change over time
var greeting = "Hello, playground"
greeting = "New Greeting"

//constant will never change
let myName = "Sam Pomerantz"

//print value of variable
print(myName)
print(greeting)


//Strings
let stringy = "A day in the life"
let stringLength = stringy.count
print(stringLength)
print(stringy.uppercased())

print(stringy.hasPrefix("A day"))
print(stringy.hasSuffix("life"))

var concatString = stringy + " of Sam"
print(concatString)

let name = "Taylor"
let age = 26
let message = "Hello, my name is \(name) and I'm \(age) years old."
print(message)



//Ints
let number = 10
let big_number = 1_000_000000____00 //underscores don't matter

var counter = 5
counter += 5
print(counter)

print(120.isMultiple(of: 3))
print(counter.isMultiple(of: 3))

let a = 1
let b = 2.0
let c = a + Int(b)
let c2 = Double(a) + b

//Booleans
var goodDogs = true
let isMultiple = 120.isMultiple(of: 3)
var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated)

goodDogs.toggle() //toggle flips boolean
print(goodDogs)



//Arrays
var beatles = ["John", "Paul", "George", "Ringo"]
let numbers = [4, 8, 15, 16, 23, 42]
var temperatures = [25.3, 28.2, 26.4]
print(beatles[0])
print(numbers[1])
print(temperatures[2])

beatles.append("Allen")
beatles.append("Adrian")
beatles.append("Novall")
beatles.append("Vivian")
print(beatles)


var scores = Array<Int>() //empty array
scores.append(100)
scores.append(80)
scores.append(85)
print(scores[1])


var albums = [String]()
albums.append("Folklore")
albums.append("Fearless")
albums.append("Red")

print(albums.count)
print(albums.contains("Red"))
print(albums.sorted())
print(albums.reversed())

let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = presidents.reversed()
print(reversedPresidents)


//Dictionaries
let employee2 = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]
print(employee2["name"])
print(employee2["job"])
print(employee2["location"]) //needs a default value, desired variable might not be there

print(employee2["name", default: "Unknown"])
print(employee2["job", default: "Unknown"])
print(employee2["location", default: "Unknown"])

var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"] = 206


var archEnemies = [String: String]()
archEnemies["Batman"] = "The Joker"
archEnemies["Superman"] = "Lex Luthor"

archEnemies["Batman"] = "Penguin"


print(archEnemies)
print(archEnemies.count)
archEnemies.removeAll()
print(archEnemies)


//left off https://www.hackingwithswift.com/quick-start/beginners/how-to-use-sets-for-fast-data-lookup
