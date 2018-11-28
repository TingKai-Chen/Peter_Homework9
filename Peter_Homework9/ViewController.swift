//
//  ViewController.swift
//  Peter_Homework9
//
//  Created by 陳庭楷 on 2018/11/18.
//  Copyright © 2018年 陳庭楷. All rights reserved.
//

import UIKit

import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var questuonTextField: UITextField!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    var word = ""
    
    @IBAction func send(_ sender: Any) {
        
        self.word = self.questuonTextField.text!
        
        if self.word.hasPrefix("健康") {
            
            self.answerLabel.text = "要靠少吃多運動才能保持良好體態"
            
            let playerWord = self.answerLabel.text!
            
            sound(voice: playerWord)
            
        }
        
        else if self.word.hasSuffix("旅行") {
            
            self.answerLabel.text = "透過網路都能夠查詢到"
            
            let playerWord = self.answerLabel.text!
            
            sound(voice: playerWord)
            
        }
        
        else if self.word.contains("笑話") {
            
            self.answerLabel.text = "我不會講笑話"
            
            let playerWord = self.answerLabel.text!
            
            sound(voice: playerWord)
            
        }
        
        else {
            
            self.answerLabel.text = "我不知道"
            
            let plarerWord = self.answerLabel.text!
            
            sound(voice: plarerWord)
            
        }
        
    }
    
    func sound (voice:String) {
        
        let speechUtterance = AVSpeechUtterance(string: voice)
        
        speechUtterance.voice = AVSpeechSynthesisVoice(language: "zh-TW")
        
        let synth = AVSpeechSynthesizer()
        
        synth.speak(speechUtterance)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
}

