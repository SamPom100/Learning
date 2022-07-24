fun main() {
    println("Hello World!")

    var hello = "Hello"
    val noChange = "Sam"
    var nullMaybe: String? = null
    val explicitS: String = "Hello"

    hello = "Hello!"
    println("$hello $noChange")

    val person = User("Sam", 21)

    val (name, age) = person
    val age2 = person.age
    println(name)
    println("$age $age2")


}

data class User(val name: String, val age: Int)


class Person{
    val name = "Sam"

    fun sayHi(){
        println("Hi $name")
    }
}

fun Person.walk(){
    println("$name is walking")
}