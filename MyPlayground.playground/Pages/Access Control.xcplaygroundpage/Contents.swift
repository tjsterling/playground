import Foundation

enum MovieGenre {
    case comedy, action, horror
}

struct MovieModel {
    let title: String
    let genre: MovieGenre
    private(set) var isFavorite: Bool
    
    func updateFavoriteValue(newValue: Bool) -> MovieModel {
        MovieModel(title: title, genre: genre, isFavorite: newValue)
    }
    
    mutating func updateFavoriteValue2(newValue: Bool) {
         isFavorite = newValue
    }
}

class MovieManager {
    
    //public
    public var movie1 = MovieModel(title: "Avengers", genre: .action, isFavorite: true)
    //private
    private var movie2 = MovieModel(title: "Flash", genre: .action, isFavorite: false)
    //read is public, set is private
    private(set) var movie3 = MovieModel(title: "Avatar", genre: .action, isFavorite: false)
    
    func updateMovie3(isFavorite:Bool) {
        movie3.updateFavoriteValue2(newValue: isFavorite)
    }
}

let manager = MovieManager()

manager.movie1 =  manager.movie1.updateFavoriteValue(newValue: false)

print(manager.movie1)


//Version 1
//We can get and set the value from outside of the object
//"too public"
let movie1 = manager.movie1
manager.movie1.updateFavoriteValue2(newValue: true)

//Version 2
//We can't get or set the value from outside of the object
//"no access"
//let movie2 = manager.movie2
//manager.movie2.updateFavoriteValue2(newValue: true)

//Version 3
//We can get the value but not set the value from outside of the object
//"best practice"
let movie3 = manager.movie3
//manager.movie3.updateFavoriteValue2(newValue: true)


//Note: private and public are the most common but there are many other access controls
//
// open
// public
// internal
// fileprivate
// private
