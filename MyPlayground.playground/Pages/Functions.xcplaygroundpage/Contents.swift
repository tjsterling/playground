
import Foundation

func myFirstFunction() {
    print("Hello World")
}

func mySecondFunction(){
    print("Hello")
    myFirstFunction()
}

mySecondFunction()

//---------------------------------------------------

func getUserName() -> String{
    let username = "Bob"
    return username
}

print(getUserName())

//---------------------------------------------------

func checkUserStatus(didCompleteOnboarding: Bool, profileIsCreated: Bool  ) -> Bool {
    if didCompleteOnboarding && profileIsCreated {
        return true
    } else {
        return false
    }
}

func showFirstScreen() {
    var userDidCompleteOnboarding: Bool = true
    var userProfileIsCreated: Bool = false
    let status = checkUserStatus(didCompleteOnboarding: userDidCompleteOnboarding, profileIsCreated: userProfileIsCreated)
    
    if status == true {
        print("SHOW HOME SCREEN")
    } else {
        print("SHOW ONBOARDING SCREEN")
    }
}

//---------------------------------------------------

func doSomething() -> String {
    var title: String = "Flash"
    
    if title == "Avengers" {
        return "Marvel"
    } else {
        return "Not Marvel"
    }
}

print(doSomething())

func doSomethingElse() {
    var title: String = "Avengers"
    
    guard title == "Avengers" else {
        print("Not Marvel")
        return
    }
    
    print("Marvel")
}

doSomethingElse()

// Calculated Variables are almost the same as Functions

var num1:Int = 1 , num2:Int = 2

var calculateSomething : Int {
    return num1 + num2
}
calculateSomething

func calculateNumbers(numberOne:Int, numberTwo:Int) -> Int {
    return num1 + num2
}
calculateNumbers(numberOne: num1, numberTwo: num2)
