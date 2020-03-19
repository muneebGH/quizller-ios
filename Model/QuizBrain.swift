//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Muneeb Ur Rehman on 19/03/2020.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation
struct QuizBrain {
    var score=0
    let quiz=[
        
        Question(text: "four plus two is equal to six", ans: "True"),
        Question(text: "five plus two is equal to seven", ans: "False"),
        Question(text: "eight plus eight is equal to fifteen", ans: "False")
        
    ]
    var questionNum=0
    
    
    func getScore()->String{
        return String(score)
        
    }
    
    mutating func checkAnswer(_ userAnswer:String) -> Bool{
        if userAnswer==quiz[questionNum].ans {
            //user got it right
            score+=1
            return true
        }else{
            //user got it wrong
            
            return false
        }
    }
    
    func getQuestionText() -> String{
        return quiz[questionNum].text
    }
    
    func getProgress() ->Float{
        return Float(questionNum)/Float(quiz.count)
    }
    
    mutating func incrementQuestionNumber(){
        if(questionNum<quiz.count-1){
            
            questionNum+=1
            
        }else{
            score=0
            questionNum=0
        }
    }
}
