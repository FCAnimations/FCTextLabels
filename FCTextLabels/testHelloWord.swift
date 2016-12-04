
//
//  testHelloWord.swift
//  FCTextLabels
//
//  Created by Dude Guy  on 12/4/16.
//  Copyright © 2016 FC Animation. All rights reserved.
//

import SpriteKit

func testHelloWord(forScene scene: SKScene = gScene!) {
  
  let
    H = makeLetter("H"),
    e = makeLetter("e"),
    l = makeLetter("l"),
    l2 = makeLetter("l"),
    o = makeLetter("o"),
    __ = makeLetter("_"),
    w = makeLetter("w"),
    o2 = makeLetter("o"),
    r = makeLetter("r"),
    // No, the "l" is not supposed to be here.
    d = makeLetter("d")
    
    makeWord(letters: [H,e,l,l2,o,__,w,o2,r,d]) // Arranges them on-screen.
    
    animations: do {
    
      H.run(.repeatForever(.rotate(byAngle: 5, duration: 1)))
      
      e.repeating([
        .scale(to: 6, duration: 0.5),
        .scale(to: 5, duration: 0.5)
        ])
      
      l.repeating([ // Kerning left?
        .move(by: CGVector(dx: -5, dy: 0), duration: 0.5),
        .move(by: CGVector(dx: 5, dy: 0), duration: 0.5)
        ])
      
      l2.repeating([ // Kerning right?
        .move(by: CGVector(dx: 5, dy: 0), duration: 0.5),
        .move(by: CGVector(dx: -5, dy: 0), duration: 0.5)
        ])

      
      o.repeating( [
        .moveTo(y: (o.position.y + 10), duration: 0.5),
        .moveTo(y: (o.position.y - 10), duration: 0.5)
        ])
      
    }
      
    
    // Do other fun stuff with the letters.
    
  }
