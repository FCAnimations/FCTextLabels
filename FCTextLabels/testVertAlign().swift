//
//  testVertAlign().swift
//  FCTextLabels
//
//  Created by Dude Guy  on 12/6/16.
//  Copyright © 2016 FC Animation. All rights reserved.
//

import SpriteKit

func testVertAlign() {

  // Compares the right one to the left one for each operation, then moves the right one:
  func alignVert(_ nodeLeft: SKLabelNode, nodeRight: SKLabelNode) {
    
    func findHeightDiff() -> CGFloat {
      return (abs(nodeLeft.height() - nodeRight.height()) / 2) / 2
    }
    
    func findDirection() -> String {
      if nodeRight.position.y > nodeLeft.position.y {
        return "up"
      }
      
      else if nodeRight.position.y < nodeLeft.position.y {
        return "down"
      }
      
      else { return "none" }
    }
    
    func findVector(diff: CGFloat, direction: String) -> CGVector {
      switch direction {
      case "up":  return CGVector(dx: 0, dy: diff)
      case "down": return CGVector(dx: 0, dy: -diff)
      default: return CGVector(dx:0,dy:0)
      }
    }
    
    let vector = findVector(diff: findHeightDiff(), direction: findDirection())
    nodeRight.run(.move(by: vector, duration: 0))
  }
  
  let sentence = makeSentence(letters: makeLetters(string: "eHllo Word!"))
    
  alignVert(sentence[0], nodeRight: sentence[1])
  
}
