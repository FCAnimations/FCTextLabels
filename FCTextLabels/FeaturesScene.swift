//
//  GameScene.swift
//  FCTextLabels
//
//  Created by Dude Guy  on 12/4/16.
//  Copyright © 2016 FC Animation. All rights reserved.
//
import SpriteKit
import Foundation
import UIKit

class FeaturesScene: SKScene {

    override func didMove(to view: SKView) {
    anchorPoint = CGPoint(0.5,0.5)
    gScene = self

    
    // testHelloWord()
    // testHelloWordFromString()
    
    
    makeSentence(letters: makeLetters(string: "Word"))
    diagnoseKerning()

    }
}
