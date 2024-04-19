
import Foundation

let username = "Bob"
var userIsPremium = false
var userIsNew = true

func getUsername() -> String {
    username
}
func getUserIsPremium() -> Bool {
    userIsPremium
}

// limited to one return type
func getUserInfo() -> String {
    
    let name = getUsername()
    let isPremium = getUserIsPremium()
     
    return name
}

// tuple can combine multiple pieces of data
func getUserInfo2() -> (String, Bool) {
    
    let name = getUsername()
    let isPremium = getUserIsPremium()
    
    return (name,isPremium)
}

print(getUserInfo2())

var userData: String = username
var userData2: (String, Bool, Bool) = (username, userIsPremium, userIsNew)


let info1 = getUserInfo2()
let name1 = info1.0

func getUserInfo3() -> (name: String, isPrime: Bool) {
    let name = getUsername()
    let isPremium = getUserIsPremium()
    return (name,isPremium)
}

let info2 = getUserInfo3()
let name2 = info2.name

func getUserInfo4() -> (name:String, isPrime:Bool, isNew:Bool) {
    return (username, userIsPremium, userIsNew)
}


func doSomethingWithUserInfo(info:(name:String, isPrime:Bool, isNew:Bool) ) {
    
}

let info = getUserInfo4()
doSomethingWithUserInfo(info: info)
