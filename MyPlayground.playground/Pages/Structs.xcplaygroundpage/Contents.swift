import Foundation

// Structs are fast
// Structs are stored in the Stack (memory)
// Objects in Stack are value types
// Value types are copied & mutated


struct Quiz {
    let title: String
    let dateCreated: Date
    let isPremium: Bool?
    
    // Structs have an implicit init
//    init(title: String, dateCreated: Date) {
//        self.title = title
//        self.dateCreated = dateCreated
//    }   
    
    
//    init(title: String, dateCreated: Date = .now) {
//        self.title = title
//        self.dateCreated = dateCreated
//    }

    init(title: String, dateCreated: Date = .now, isPremium: Bool?) {
        self.title = title
        self.dateCreated = dateCreated
        self.isPremium = isPremium ?? false
    }
    
    
}

//let myQuiz = Quiz(title: "Hello World", dateCreated: Date.now)
//let myQuiz = Quiz(title: "Hello World")
let myQuiz = Quiz(title: "Hello World", isPremium: nil)

//-------------------------------------------------------------------------

//"immutable struct" all "let" constants = NOT mutable
var name:String = "Bob"
var isPremium:Bool = false

struct UserModel {
    let name:String
    let isPremium:Bool
}

var user:UserModel = UserModel(name: name, isPremium: isPremium)

func markUserAsPremium(user: UserModel) -> UserModel {
    UserModel(name: user.name, isPremium: true)
}

print(markUserAsPremium(user: user))

//-------------------------------------------------------------------------
//"mutable struct"
struct UserModel2 {
    let name:String
    var isPremium:Bool
}

var user2 = UserModel2(name: name, isPremium: isPremium)

func markUserAsPremium2() {
    user2.isPremium = true
}

markUserAsPremium2()
print(user2)

//-------------------------------------------------------------------------

struct UserModel3 {
    let name:String
    let isPremium:Bool
    
    func markUserAsPremium() -> UserModel3 {
        UserModel3(name: name, isPremium: true)
    }
}
var user3 = UserModel3(name: "Max", isPremium: false)

print(user3.markUserAsPremium())

//-------------------------------------------------------------------------

struct UserModel4 {
    let name:String
    private(set) var isPremium:Bool
    
    mutating func markUserAsPremium() {
       isPremium = true
    }
}

var user4 = UserModel4(name: "Lotte", isPremium: false)
user4.markUserAsPremium()
print(user4)

//private setter
//user4.isPremium = false

