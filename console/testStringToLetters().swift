//
//  testStringToLetters.swift
//  FCTextLabels
//
//  Created by Dude Guy  on 12/4/16.
//  Copyright © 2016 FC Animation. All rights reserved.
//

import SpriteKit

func testStringToLetters(string: String) -> [Letter] {
  
  var letters = [Letter](); func addLetter(letta: Character) { letters.append( makeLetter(String(letta))) }
  for letter in string.characters {
    switch letter {
    case "a": addLetter(letta: letter)
    default: print("letter not found"); fatalError()
    }
    

  }
  return [Letter()]
}

