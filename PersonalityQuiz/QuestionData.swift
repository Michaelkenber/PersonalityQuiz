//
//  QuestionData.swift
//  PersonalityQuiz
//
//  Created by Michael Berend on 23/02/2018.
//  Copyright © 2018 Michael Berend. All rights reserved.
//

import Foundation


struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
    // creates a struct for the questions
}


enum ResponseType {
    case single, multiple, ranged
    // makes 3 different question types
}


struct Answer {
    var text: String
    var type: AnimalType
    // creates a struct for the answers
}

enum AnimalType: Character {
    case dog = "🐶", cat = "🐱", rabbit = "🐰", turtle = "🐢"

    var definition: String {
        switch self {
        case .dog:
            return "You are incredibly outgoing. You surround yourself with people you love and enjoy activities with your friends"
        case .cat:
            return "Mishievous, yet mild-tempered, you enjoy doing things on your own terms"
        case .rabbit:
            return "You love everything that's soft. You are healthy and full of energy"
        case .turtle:
            return "You are wise beyond your years, and you focus on the details. Slow and steady wins the race"
            
        // creates a dog, cat, rappit or turtle type for each personality and includes the definition
        }
    }
}

