import Foundation


for item in 0..<9 {
    print(item)
}

let myArray = ["one","two","three","four","five","six"]

var secondArray:[String] = []

for item in myArray {
    print(item)
    
    if item == "four" {
        secondArray.append(item)
    }
}

print(secondArray)


struct LessonModel {
    let name:String
    let isFavorite:Bool
}

let allLessons:[LessonModel] = [
    LessonModel(name: "Math", isFavorite: true),
    LessonModel(name: "German", isFavorite: false),
    LessonModel(name: "Swift", isFavorite: true),
    LessonModel(name: "Javascript", isFavorite: false),
]

var favoriteLessons:[LessonModel] = []

for (index, lesson) in allLessons.enumerated() {
    
    if index == 0 {
        continue
    }
    
    if index == 2 {
        break
    }
    
    if lesson.isFavorite {
        favoriteLessons.append(lesson)
    }
    print("index: \(index) name: \(lesson.name)")
}

print(favoriteLessons)
