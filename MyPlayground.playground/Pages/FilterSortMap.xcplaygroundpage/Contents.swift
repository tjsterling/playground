import Foundation

struct UserModel {
    let name: String
    let isPremium: Bool
    let order: Int
}

var allUsers: [UserModel] = [
    UserModel(name: "Lars", isPremium: true, order: 4),
    UserModel(name: "Hans", isPremium: false, order: 2),
    UserModel(name: "Dieter", isPremium: true, order: 1),
    UserModel(name: "Peter", isPremium: false, order: 3),
    

]

var premiumUsers: [UserModel] = []

//for user in allUsers {
//    if user.isPremium {
//        premiumUsers.append(user)
//    }
//}

premiumUsers = allUsers.filter { user in
    user.isPremium
}

print(premiumUsers)

let normalUsers: [UserModel] = allUsers.filter({ !$0.isPremium })

print(normalUsers)


let ascUsers: [UserModel] = allUsers.sorted(by: ({$0.order < $1.order}))

print(ascUsers)

let descUsers: [UserModel] = allUsers.sorted { user1, user2 in
    user1.order > user2.order
}

print("desc",descUsers)

let userNames: [String] = allUsers.map({ $0.name })

print(userNames)
