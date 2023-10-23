//
//  ViewController.swift
//  Quiz
//
//  Created by Tamson Quang on 10/22/23.
//

import UIKit


class ViewController: UIViewController {
    
    //Connect View Layer to Model Layer
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    //List of questions
    let questions: [String] = [
        "What is 7+7?",
        "What is the capital of Vermont",
        "What is cognac made from?"
        ]
    
    //List of Answers
    let answers: [String] = [
        "14",
        "Montpelier",
        "Grapes"
    ]
    var currentQuestionIndex: Int = 0 //Beginning Question index
    
    @IBAction func showNextQuestion(_sender: UIButton){
        currentQuestionIndex += 1 //increment Question index
        if currentQuestionIndex == questions.count{ //reset question index
            currentQuestionIndex = 0
        }
        
        //Label Questions
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }
    
    //Show answer when Answer button is pushed
    @IBAction func showAnswer(_sender: UIButton){
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
    //Load first question from array, replace ??? placeholder in questionlabel
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }
}
