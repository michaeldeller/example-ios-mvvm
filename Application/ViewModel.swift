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
    
}

let familyMembers = [
    Person(name: "Mike"),
    Person(name: "Carol"),
    Person(name: "Greg"),
    Person(name: "Marcia"),
    Person(name: "Peter"),
    Person(name: "Jan"),
    Person(name: "Bobby"),
    Person(name: "Cindy")
]
