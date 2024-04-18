
import Foundation

// let => Constant
let someConst: Bool = true

// var => Variable
var someVar: Bool = false

someVar = true

// value cant be changed because of let => results in error
//someConst = false

// if statements
var userIsPremium: Bool = true

if userIsPremium == true {
    print("1 user is premium")
}

if userIsPremium {
    print("2 user is premium")
}

if userIsPremium == false {
    print("3 user is not premium")
}

if !userIsPremium {
    print("4 user is not premium")
}
