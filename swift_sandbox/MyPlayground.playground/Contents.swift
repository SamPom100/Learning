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
//print(employee2["name"])
//print(employee2["job"])
//print(employee2["location"]) //needs a default value, desired variable might not be there

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


//sets for data lookup

let actors = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson", "Samuel L Jackson"])// auto removes duplicates, ignores original order

var actors2 = Set<String>()
actors2.insert("Denzel Washington")
actors2.insert("Tom Cruise")
actors2.insert("Nicolas Cage")
actors2.insert("Samuel L Jackson")

var cage = actors2.contains("Nicolas Cage")
print(cage)
print(actors2.count)
print(type(of: actors2))


//Enums

var selected = "Monday"
selected = "Tuesday" //instead of doing this


enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

enum Weekay {
    case monday, tuesday, wednesday, thursday, friday
}

var day = Weekday.monday //much more reliable
day = Weekday.tuesday

var day2 = Weekday.monday //alternate formatting
day2 = .tuesday
day2 = .friday



//Type annotations

let playerName: String = "Lasso"
var score: Int = 0
var score2: Double = 0
var albums2: [String] = ["Red", "Fearless"]
var user2: [String: String] = ["id": "@twostraws"]
var books: Set<String> = Set(["The Bluest Eye", "Foundation", "Girl, Woman, Other"])

var teams: [String] = [String]()
teams.append("Member 1")
teams.append("Member 2")
print(teams)

var cities: [String] = []
var clues = [String]()

enum UIStyle {
    case light, dark, system
}

var style = UIStyle.light
style = .dark

let username: String
// lots of complex logic
username = "@twostraws"
// lots more complex logic
print(username)


//coding checkpoint 2
//create an array of strings, then write some code that prints prints the number of items in the array and also the number of unique items in the array

let checkpointArr = ["Hello","Checkpoint","World","Hello","Word","World","Swift"]
print("Length of the initial array is: \(checkpointArr.count)")

let checkpointSet = Set(checkpointArr)
print("Length of Unique items in the array is: \(checkpointSet.count)")

var checkpointSet2 = Set<String>()
for word in checkpointArr {
    checkpointSet2.insert(word)
}
print(checkpointSet2)


//checking conditions
var dayTime = true
if dayTime{
    print("It's the day")
}

let score3 = 85
if score3 > 80 {
    print("Nice score")
}

let country = "Canada"
if country == "Australia" {
    print("G'day!")
}

var username2 = "taylorswift13"
if username2.count == 0 {
    username2 = "Anonymous"
}
if username2.isEmpty == true {
    username2 = "Anonymous"
}
if username2.isEmpty {
    username2 = "Anonymous"
}

let age2 = 16

if age2 >= 18 {
    print("You can vote in the next election.")
} else {
    print("Sorry, you're too young to vote.")
}

let userAge = 14
let hasParentalConsent = true

if userAge >= 18 || hasParentalConsent == true {
    print("You can buy the game")
}

enum transportation{
    case bike
    case car
    case plane
}

var howIgetAround = transportation.bike
if howIgetAround == transportation.bike {
    print("Biker")
}


//testing removing stuff
var numberList = [1,2,3,4,5,6,7,8,9,10]
print(numberList)
numberList.remove(at: 3)
print(numberList)
print(numberList[3])

//switch statements


enum Weather {
    case sun, rain, wind, snow, unknown
}

let forecast = Weather.sun

if forecast == .sun {
    print("It should be a nice day.")
} else if forecast == .rain {
    print("Pack an umbrella.")
} else if forecast == .wind {
    print("Wear something warm")
} else if forecast == .rain {
    print("School is cancelled.")
} else {
    print("Our forecast generator is broken!")
}


//easier to write
switch forecast {
case .sun:
    print("It should be a nice day.")
case .rain:
    print("Pack an umbrella.")
case .wind:
    print("Wear something warm")
case .snow:
    print("School is cancelled.")
case .unknown:
    print("Our forecast generator is broken!")
}


let place = "Metropolis"

switch place {
case "Gotham":
    print("You're Batman!")
case "Mega-City One":
    print("You're Judge Dredd!")
case "Wakanda":
    print("You're Black Panther!")
default:
    print("Who are you?")
}

let day3 = 5
print("My true love gave to me…")

switch day3 {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}



// ternary conditional operator
let age3 = 18
let canVote = age3 >= 18 ? "Yes" : "No"
print(canVote)

let hour2 = 23
print(hour2 < 12 ? "It's before noon" : "It's after noon")

let names2 = ["Jayne", "Kaylee", "Mal"]
let crewCount = names2.isEmpty ? "No one" : "\(names2.count) people"
print(crewCount)

//loops

let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works great on \(os).")
}

for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
}

for i in 1...5 {
    print("Counting from 1 through 5: \(i)")
}

print()

for i in 1..<5 {
    print("Counting 1 up to 5: \(i)")
}

var lyric = "Haters gonna"

for _ in 1...5 { //don't need a variable to loop in this case, use _
    lyric += " hate"
}

print(lyric)

//left off https://www.hackingwithswift.com/quick-start/beginners/how-to-use-a-for-loop-to-repeat-work


