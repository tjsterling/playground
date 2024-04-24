import Foundation

protocol Employee {
    var name: String { get }
}



struct EmployeeModel: Employee {
    let title: String
//    let name: String
}

