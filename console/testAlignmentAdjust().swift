//
//  testStringToLetters.swift
//  FCTextLabels
//
//  Created by Dude Guy  on 12/4/16.
//  Copyright © 2016 FC Animation. All rights reserved.
//

import SpriteKit


func testAlignmentAdjust() {
  
  let scene = SKScene(); scene.anchorPoint = CGPoint(0.5,0.5)
  
  
  func hDiff(_ node1: SKLabelNode,_ node2: SKLabelNode) -> CGFloat {
    return abs(node1.height() - node2.height()) / 2
  }
  
  
  let sentence = makeSentence(letters: makeLetters(string: "Hello Word!"),
                              inScene: scene)
  
  //sentence[1].position = CGPoint(x:-187,y:hDiff())
  print(sentence.first!.position, sentence[0].frame.size)
  
}
