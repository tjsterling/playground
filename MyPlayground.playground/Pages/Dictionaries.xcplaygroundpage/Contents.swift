import Foundation

var myFirstDictionary:[String:Bool] = [
    "one": true,
    "two": true,
    "three": false,
]

let item = myFirstDictionary["one"]

struct CarModel {
    let brand: String
    let color: String
}


var mySecondDictionary:[String:CarModel] = [
    "one": CarModel(brand: "Ford", color: "blue"),
    "two": CarModel(brand: "Toyota", color: "grey"),
    //Error, keys must be unique
    //"two": Car(brand: "Tesla", color: "black"),
]

//If the key is not in dictionary the return value is nil
var car = mySecondDictionary["three"]


mySecondDictionary["four"] = CarModel(brand: "Mini", color: "white")

print(mySecondDictionary)
