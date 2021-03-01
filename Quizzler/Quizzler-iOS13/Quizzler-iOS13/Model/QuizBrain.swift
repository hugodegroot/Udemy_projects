//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Hugo de Groot on 28/02/2021.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz = [
        Question(questionAsked: "A slug's blood is green.", questionAnswer: "True"),
        Question(questionAsked: "Approximately one quarter of human bones are in the feet.", questionAnswer: "True"),
        Question(questionAsked: "The total surface area of two human lungs is approximately 70 square metres.", questionAnswer: "True"),
        Question(questionAsked: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", questionAnswer: "True"),
        Question(questionAsked: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", questionAnswer: "False"),
        Question(questionAsked: "It is illegal to pee in the Ocean in Portugal.", questionAnswer: "True"),
        Question(questionAsked: "You can lead a cow down stairs but not up stairs.", questionAnswer: "False"),
        Question(questionAsked: "Google was originally called 'Backrub'.", questionAnswer: "True"),
        Question(questionAsked: "Buzz Aldrin's mother's maiden name was 'Moon'.", questionAnswer: "True"),
        Question(questionAsked: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", questionAnswer: "False"),
        Question(questionAsked: "No piece of square dry paper can be folded in half more than 7 times.", questionAnswer: "False"),
        Question(questionAsked: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", questionAnswer: "True")
    ]
    
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].questionAnswer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].questionAsked
    }
    
    func getProgress() -> Float {
        let progress = Float(questionNumber) / Float(quiz.count)
        return progress
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }
    
    func getScore() -> Int {
        return score
    }
}
