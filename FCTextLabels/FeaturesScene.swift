//
//  GameScene.swift
//  FCTextLabels
//
//  Created by Dude Guy  on 12/4/16.
//  Copyright © 2016 FC Animation. All rights reserved.
//
import SpriteKit

var gScene: SKScene?

class FeaturesScene: SKScene {

    override func didMove(to view: SKView) {
    anchorPoint = CGPoint(0.5,0.5)
    gScene = self
    
    testHelloWord(forScene: self)
    }
}
