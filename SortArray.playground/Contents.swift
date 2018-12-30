/*    : Sorting an Array of Structures
 : Created by Ujjwal Verma
 : Created on Aug 03, 2017
 */

import Foundation

//    : Define Structure
struct Person {
    var firstName: String
    var lastName: String
    var phone: String
}

//    : Create records

var employee = Person(firstName: "Ajay", lastName:"Mehra", phone:"0414214512")
var electrician = Person(firstName: "Rahul", lastName:"Sharma", phone:"0411211511")
var postman = Person(firstName: "Tulsi", lastName:"Ram", phone:"0402187198")
var chef = Person(firstName: "Joseph", lastName: "Fernandes", phone: "0416172871")

//    : Create Array of type Structure to store records at one place

var contacts = [Person]()

contacts.append(employee)
contacts.append(electrician)
contacts.append(postman)
contacts.append(chef)

print(contacts)

//    : Sort the Array and put values in a new Array

let sortedContacts = contacts.sorted(by: {
    $0.lastName < $1.lastName
})

print(sortedContacts)




