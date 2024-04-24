import Foundation


//Array, Sets

var myTitle = "Hello World"
var myTitle2 = "Hello World"

// Tupel

func doSomething(value:(title:String, title2:String)) -> (String,String) {
    value
}

doSomething(value: (myTitle,myTitle2))

//custom model

struct TitleModel {
    let title:String
    let title2:String
}

func doSomething2(value:TitleModel) {
    //
}

let orange:String = "Orange"
let apple:String = "Apple"

var fruits:[String] = [orange,apple]
var fruits2:Array<String> = [orange,apple]

func doSomething3(value:[String]) {
    //
}

let count = fruits.count
let first = fruits.first
let last = fruits.last


fruits.append("Banana")
fruits.append(contentsOf: ["Cherry","Breadfruit"])

let lastIndex = fruits.indices.last
let firstIndex = fruits.indices.first

//trying to get a index which is out of range will lead to crashing the app
//fruits[5]

if fruits.indices.contains(5) {
    print("It hast that Index")
}

print(fruits[1])

print(fruits)

fruits.insert("Watermelon", at: 2 )
fruits.insert(contentsOf: ["Avenger","Loki"], at: 3 )
fruits.remove(at: 3)
fruits.remove(at: 3)

print(fruits)

fruits.removeAll()

print(fruits)


var fruits3: [String] = [orange, orange, apple]
print(fruits3)

//unique values
var fruits4: Set<String> = [orange, orange, apple]
print(fruits4)
