//
//  testHelloWordFromString().swift
//  FCTextLabels
//
//  Created by Dude Guy  on 12/6/16.
//  Copyright © 2016 FC Animation. All rights reserved.
//

import SpriteKit

// FIXME: Why does .run not update position????


func testHelloWordFromString() {
  
 let sentence = makeSentence(letters: makeLetters(string: "eHllo Word!"))
   sentence.last?.repeating([.rotate(byAngle: -3, duration: 0.5)])

}
