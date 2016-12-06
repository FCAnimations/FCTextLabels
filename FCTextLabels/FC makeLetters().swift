//
//  MakeLetters.swift
//  FCTextLabels
//
//  Created by Dude Guy  on 12/4/16.
//  Copyright © 2016 FC Animation. All rights reserved.
//

import SpriteKit

public func makeLetter(_ string: String) -> Letter {
  
  let newLetter = SKLabelNode(text: string)
  /*
   newLetter.fontName = "Chalkduster" */
  newLetter.fontSize = 24
  newLetter.verticalAlignmentMode = .center
  newLetter.horizontalAlignmentMode = .center
  newLetter.setScale(5)
  
  return newLetter
}

public func makeWord(letters:      [Letter],
              atPoint point: CGPoint = CGPoint(-300,300),
              inScene scene: SKScene = gScene!) {
  
  // Maybe I can convert points? Compare differences in height /2?
  // Make a rectangle to fit them all in?
  // Do we need to find the tallest letter to base the others on?
  
  var lastHeight = letters[0].height()                                                    // <- We need a reference point for first iteration.
  var nextPoint = point                                                                   // <- This is to be the bottom-right edge for the next letter
  
  for letter in letters {
    
    scene.addChild(letter)
    
    findWidth: do {
      let width = letter.frame.width
      letter.position = nextPoint
      letter.position.x = nextPoint.x + ((width / 2) - 2)
      nextPoint.x += width
    }
    
    findHeight: do {
      let height = letter.frame.height
      if height > lastHeight { letter.position.y += ((height - lastHeight) / 2) }
      else if height < lastHeight { letter.position.y -= ((lastHeight - height) / 2) }
      
      lastHeight = height
      nextPoint.y = letter.position.y
    }
  }
}

/* Placeholder:
  public func makeSentence(words: [Word]) -> Sentence {
    
    func joinWord() {} // pairs of two?
    
    return Sentence()
  }
*/


