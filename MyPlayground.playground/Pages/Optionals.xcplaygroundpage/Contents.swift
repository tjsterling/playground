
import Foundation


// There is always a value and it's a Bool
let myBool: Bool = false

// We don't know if there is a value, but if there is, it's a Bool
var myOtherBool: Bool?

myOtherBool = true
myOtherBool = false
myOtherBool = nil

//nil coalescing operator
// The value of myOtherBool(if there is one) or false
var myNewBool: Bool = myOtherBool ?? false

print("New Bool: \(myNewBool)")

var myString: String? = "Hello World"
let noValue: String = "There is no value"

print(myString ?? noValue)

myString = "New Text"
print(myString ?? noValue)

myString = nil
print(myString ?? noValue)


//-------------------------------------------------------

var userIsPremium: Bool?

func checkIfUserIsPremium() -> Bool? {
     return userIsPremium
}

func checkIfUserIsPremium2() -> Bool {
    return userIsPremium ?? false
}

let isPremium = checkIfUserIsPremium()

//-------------------------------------------------------

//if-let
func checkIfUserIsPremium3() -> Bool {
    
    // if there is a value, let newValue equal that value
    if let newValue = userIsPremium {
        return newValue
    } else {
        return false
    }
}

func checkIfUserIsPremium4() -> Bool {
    
    // if there is a value, let our userIsPremium equal that value
    if let userIsPremium {
        return userIsPremium
    } else {
        return false
    }
}

//if-let
func checkIfUserIsPremium5() -> Bool {
    
    // Make sure there is a value else return
    guard let userIsPremium else { return false }
    
    return userIsPremium
}


var userIsNew: Bool? = true
var userDidCompleteOnboarding: Bool? = false
var userFavoriteMovie:String? = nil

func getUserStatus(userIsNew:Bool, userDidCompleteOnboarding:Bool, userFavoriteMovie:String ) -> Bool {
    return userIsNew && userDidCompleteOnboarding
}

func checkIfUserIsSetUp() -> Bool {
    
    if let userIsNew, let userDidCompleteOnboarding, let userFavoriteMovie {
        // userIsNew == Bool AND
        // userDidCompleteOnboarding == Bool AND
        // userFavoriteMovie == String
        return getUserStatus(
            userIsNew: userIsNew,
            userDidCompleteOnboarding: userDidCompleteOnboarding,
            userFavoriteMovie: userFavoriteMovie
        )
    }  else {
        // userIsNew == nil OR
        // userDidCompleteOnboarding == nil OR
        // userFavoriteMovie == nil
        return false
        
    }
}
checkIfUserIsSetUp()

func checkIfUserIsSetUp2() -> Bool {
    
    guard let userIsNew, let userDidCompleteOnboarding, let userFavoriteMovie else { return false }
    
    return getUserStatus(
        userIsNew: userIsNew,
        userDidCompleteOnboarding: userDidCompleteOnboarding,
        userFavoriteMovie: userFavoriteMovie
    )

}

checkIfUserIsSetUp2()


func checkIfUserIsSetUp3() -> Bool {
    
    if let userIsNew {
        //userIsNew == Bool
        
        if let  userDidCompleteOnboarding {
            //userDidCompleteOnboarding == Bool
            
            if let  userFavoriteMovie {
                //userFavoriteMovie == String
                
                return getUserStatus(
                    userIsNew: userIsNew,
                    userDidCompleteOnboarding: userDidCompleteOnboarding,
                    userFavoriteMovie: userFavoriteMovie
                )
            } else {
                //userFavoriteMovie == nil
                return false
            }
        } else {
            //userDidCompleteOnboarding == nil
            return false
        }
    } else {
        //userIsNew == nil
        return false
    }
}


func checkIfUserIsSetUp4() -> Bool {
    
    guard let userIsNew else { return false }
    
    guard let userDidCompleteOnboarding else { return false }
    
    guard let userFavoriteMovie else { return false }
    
    return getUserStatus(
        userIsNew: userIsNew,
        userDidCompleteOnboarding: userDidCompleteOnboarding,
        userFavoriteMovie: userFavoriteMovie
    )

}


//-------------------------------------------------------
// optional chaining


func getUsername() -> String? {
    return "Bob"
}

func getTitle() -> String {
    return "Black Panther"
}

func getUserData() {
    var username: String? = getUsername()
    //get the username count if username is not nil
    let count = username?.count
    
    var title: String = getTitle()
    let count2 = title.count
    
    // if username is not nil AND the value of first is not nil, then return the value of isLowercase
    var firstCharacterIsLowercases: Bool = username?.first?.isLowercase ?? false
    
    //developer: get the username count because it will not be nil
    //if the username is nil the app will crash
    let count3 = username!.count
}
