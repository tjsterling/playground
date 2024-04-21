import Foundation

// Classes are slower
// Classes are stored in the Heap (memory)
// Objects in the Heap are reference types
// Reference types point to object in memory and update the object in memory


//All of the data for some screen
class ScreenViewModel {
    let title:String
    private(set) var showButton:Bool
    
    //Same init as Struct, except struct has implicit init
    init(title: String, showButton: Bool = false) {
        self.title = title
        self.showButton = showButton
    }
    
    deinit {
        //runs when the object is removed from memory
        //structs don't have a deinit
    }
    
    func updateShowButton(_ value:Bool) {
        self.showButton = value
    }
}


struct MyScreen {
    
}

//Notice that we are using "let" because:
//the object itself is not changing
//the data inside the object is changing

let viewModel =  ScreenViewModel(title: "Home", showButton: false)
//viewModel.showButton = true
viewModel.updateShowButton(false)
print(viewModel.showButton)
