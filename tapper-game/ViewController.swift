//
//  ViewController.swift
//  tapper-game
//
//  Created by Nik Muhammad Amin on 4/3/16.
//  Copyright © 2016 aminalzanki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //properties
    var maxTaps = 0
    var currentTaps = 0
    
    // variable
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var tapBtn: UIButton!
    @IBOutlet weak var tapsLbl: UILabel!
    
    @IBAction func onCoinTapped(sender: UIButton) {
        currentTaps++
        updateTapsLbl()
        
        if isGameOver() {
            restartGame()
        }
    }
    
    @IBAction func onPlayButtonPressed(sender: UIButton!) {
        if howManyTapsTxt.text != nil && howManyTapsTxt.text != "" {
            
            logoImg.hidden = true
            playBtn.hidden = true
            howManyTapsTxt.hidden = true
            tapBtn.hidden = false
            tapsLbl.hidden = false
            
            maxTaps = Int(howManyTapsTxt.text!)!
            currentTaps = 0
            
            updateTapsLbl()
            
        }
    }
    
    
    func restartGame() {
        maxTaps = 0
        howManyTapsTxt.text = ""
        logoImg.hidden = false
        playBtn.hidden = false
        howManyTapsTxt.hidden = false
        tapBtn.hidden = true
        tapsLbl.hidden = true
    }
    
    func isGameOver() -> Bool {
        if currentTaps >= maxTaps {
            return true
        }
        return false
    }
    
    func updateTapsLbl() {
        tapsLbl.text = "\(currentTaps) Taps"
    }
}

