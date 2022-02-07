func sayHello(){
    print("Hello")
}
sayHello()

func printInput(inputString:String){
    print(inputString)
}
printInput(inputString: "Sam")


func countInput(inputString:String){
    print("the input is \(inputString) and has \(inputString.count) letters")
}
countInput(inputString: "22222")


func countLettersInString(_ str: String) {
 print("The string \(str) has \(str.count) letters.")
}
countLettersInString("Testing")

func countLetters(in string: String) {
 print("The string \(string) has \(string.count) letters.")
}
countLetters(in: "Hello")

func isEvenNumber(in input:Int) -> Bool{
    if(input%2==0){
        return true;
    }
    return false;
}

print(isEvenNumber(in: 10))










//optionals

func weatherRec(_ weatherIn:String){
    if(weatherIn == "Sun"){
        print("Go Outside")
    }
    else if(weatherIn == "Rain"){
        print("Stay Inside")
    }
}




func getNullOrString() -> String? {
    let decideVar = Int.random(in: 1..<10)
    if(decideVar > 5){
        return "String"
    } else{
        return nil
    }
}

var status = getNullOrString() //could be null or 'String'

//unwrap status
func detectDanger(input:String?){
    if(status == nil){
        print("Danger")
    }
    else{
        print("Safe")
        print(status!) //the ! makes it assume string, force unwrap optional
    }
}

detectDanger(input: status)

print(status ?? "it's null")









// enums
enum WeatherType {
    case sun, cloud, rain, wind, snow
}
func getHaterStatus(weather: WeatherType) -> String? {
     if weather == WeatherType.sun {
         return nil
     } else {
         return "Hate"
     }
}
let temp = getHaterStatus(weather: WeatherType.cloud)
print(temp ?? "temp is null")






//Structs
struct bankAccount{
    var userName: String
    var balance: Int
    
    func describe() -> String{
        return ("This account is owned by \(userName) and has a balance of \(balance) dollars.")
    }
}

let Sam = bankAccount(userName: "Sam", balance: 5000)
print(Sam)
print(Sam.balance)
print(Sam.describe())







//classes
class Person {
 var clothes: String
 var shoes: String
    
     init(clothes: String, shoes: String) {
         self.clothes = clothes
         self.shoes = shoes
     }
    
    func describe() -> String{
        return "this person is wearing " + clothes + " and has " + shoes
    }
}

var examplePerson = Person(clothes:"Green Shirt", shoes: "Sneakers")
print(examplePerson.describe())


class FamousPerson: Person {
    override func describe() -> String {
        return "this person is famous"
    }
}


var exampleFamousPerson = FamousPerson(clothes:"abc", shoes:"abc")
print(exampleFamousPerson.describe())











//properties
struct Person2 {
 var clothes: String
 var shoes: String
     func describe() {
         print("I like wearing \(clothes) with \(shoes)")
     }
}

let taylor = Person(clothes: "T-shirts", shoes: "sneakers")
let other = Person(clothes: "short skirts", shoes: "high heels")
taylor.describe()
other.describe()


var myInt = 1

extension Int {
     func plusOne() -> Int {
         return self + 1
     }
}

myInt.plusOne()

print(myInt)





if let str222 = readLine() {
   print(str222)
}
