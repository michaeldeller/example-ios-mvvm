//  Copyright 2022 Michael Deller
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.

import Foundation

class ViewModel: ObservableObject {
    @Published var family: [Person] = []
    
    init() {
        originalOrder()
    }
    
    func shuffleOrder() {
        family.shuffle()
    }
    
    func reverseOrder() {
        family.reverse()
    }
    
    func originalOrder() {
        family = familyMembers
    }
    
    func sleep(member: Person) {
        print("sleep functioned: \(member.name)")
        let index = indexOf(member: member)
        print("index: \(index)")
        family[index].isCrying.toggle()
    }
    
    func indexOf(member: Person) -> Int {
        for index in 0..<family.count {
            if family[index].id == member.id {
                print("match: \(family[index].name)")
                return(index)
            }
        }
        return 0
    }
    
}

let familyMembers = [
    Person(name: "Mike", relationship: "Father", isCrying: false),
    Person(name: "Carol", relationship: "Mother", isCrying: false),
    Person(name: "Greg", relationship: "Son", isCrying: false),
    Person(name: "Marcia", relationship: "Daughter", isCrying: false),
    Person(name: "Peter", relationship: "Son", isCrying: false),
    Person(name: "Jan", relationship: "Daughter", isCrying: false),
    Person(name: "Bobby", relationship: "Son", isCrying: false),
    Person(name: "Cindy", relationship: "Daughter", isCrying: false)
]
