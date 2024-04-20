import Foundation

// Enum is the same as a Struct except we now all cases at runtime


struct CarModel {
    let brand: String
    let model: String
}

var car1 = CarModel(brand: "Audi", model: "A1")
var car2 = CarModel(brand: "Audi", model: "A3")
var car3 = CarModel(brand: "Audi", model: "A5")


struct CarModel2 {
    let brand: CarBrand
    let model: String
}

//Enums are stored in memory the same way as a Struct but cant be mutated
enum CarBrand {
    case audi
    case toyota
    
    var title: String {
        switch self {
        case .audi:
            return "Audi"
        case .toyota:
            return "Toyota"
        }
    }
}

var car4 = CarModel2(brand: .audi, model: "A1")
var car5 = CarModel2(brand: .audi, model: "A3")
var car6 = CarModel2(brand: .toyota, model: "Camry")

print(car4.brand.title)
