//
//  testVertAlignAll().swift
//  FCTextLabels
//
//  Created by Dude Guy  on 12/6/16.
//  Copyright © 2016 FC Animation. All rights reserved.
//

import SpriteKit

func testVertAlignAll() {

  // Compares the right one to the left one for each operation, then moves the right one:
  func alignVert(_ nodeLeft: SKLabelNode, nodeRight: SKLabelNode) {
    
    func calr_findPoint(diff: CGFloat, direction: String) -> CGFloat {
      switch direction {
      case "up":   return  diff
      case "down": return  -diff
      default:     return  0
      }
    }
    
    func pram_findHeightDiff() -> CGFloat {
      return (abs(nodeLeft.height() - nodeRight.height()) / 2) / 2
    }
    
    func pram_findDirection() -> String {
      if nodeRight.position.y > nodeLeft.position.y { return "up" }
      else if nodeRight.position.y < nodeLeft.position.y { return "down" }
      else { return "none" }
    }
    
    print(pram_findDirection())
    // FIXME: Are these any good?
    let point = calr_findPoint(diff: pram_findHeightDiff(), direction: pram_findDirection())
    nodeRight.position.y += point
  }
  
  // FIXME: Spaces ruin it
  func alignAll(inSentence sentence: Sentence) {
    let max = (sentence.count - 1)
    assert(max > 0) // Because we need at least two.
    
    func align(_ i: Int) {
      if i > max { return }
      else {
        alignVert(sentence[0], nodeRight: sentence[i])
        align(i + 1)
      }
    }
             // Because we need at least 2 things,
    align(1) // and 1-0 is 0, which is first leftmost,
             // which will set alignment for the rest of word
  }
  
   alignAll(inSentence: makeSentence(letters: makeLetters(string: "Hello Word!")))
  
  
  /*
  APPEARS TO BE WORKING:
   let sentence = makeSentence(letters: makeLetters(string: "eHllo Word!"))
  var num = 0
  
  alignVert(sentence[num], nodeRight: sentence[num + 1])
  num += 1
  
  alignVert(sentence[0], nodeRight: sentence[2])
 */


  
}


