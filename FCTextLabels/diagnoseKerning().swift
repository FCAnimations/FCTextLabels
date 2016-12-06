//
//  diagnoseKerning().swift
//  FCTextLabels
//
//  Created by Dude Guy  on 12/6/16.
//  Copyright © 2016 FC Animation. All rights reserved.
//

import SpriteKit

func diagnoseKerning() {
  let newLetter = SKLabelNode(text: "Hello World!")
  newLetter.fontSize = 24
  newLetter.verticalAlignmentMode = .baseline
  newLetter.horizontalAlignmentMode = .center
  newLetter.setScale(5)
  gScene!.addChild(newLetter)
}
