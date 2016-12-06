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
    gView = self.view
    
    // testHelloWord()
    // testHelloWordFromString()
    // testVertAlign()
    // testVertAlignAll()
    // diagnoseKerning()

     let label = SKLabelNode(text: "hi there")
      let sprite = SKSpriteNode(texture: view.texture(from: label))
      sprite.position = CGPoint(0,0)
      addChild(sprite)
    }
}
