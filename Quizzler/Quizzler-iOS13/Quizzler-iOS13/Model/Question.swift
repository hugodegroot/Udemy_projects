//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Hugo de Groot on 28/02/2021.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let questionAsked: String
    let questionAnswer: String
    
    init(questionAsked: String, questionAnswer: String) {
        self.questionAsked = questionAsked
        self.questionAnswer = questionAnswer
    }
}
