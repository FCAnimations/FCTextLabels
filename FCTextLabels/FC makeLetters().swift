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
  newLetter.verticalAlignmentMode = .baseline
  newLetter.horizontalAlignmentMode = .center
  newLetter.setScale(5)
  
  return newLetter
}

public func makeLetters(string: String) -> [Letter] {
  assert(!string.characters.isEmpty)
  
  var letters = [Letter](); func addLetter(letta: Character) { letters.append( makeLetter(String(letta))) }
  
  for letter in string.characters {
    switch letter {
      
    // lower-case:
    case "a": addLetter(letta: letter);  case "b": addLetter(letta: letter)
    case "c": addLetter(letta: letter);  case "d": addLetter(letta: letter)
    case "e": addLetter(letta: letter);  case "f": addLetter(letta: letter)
    case "g": addLetter(letta: letter);  case "h": addLetter(letta: letter)
    case "i": addLetter(letta: letter);  case "j": addLetter(letta: letter)
    case "k": addLetter(letta: letter);  case "l": addLetter(letta: letter)
    case "m": addLetter(letta: letter);  case "n": addLetter(letta: letter)
    case "o": addLetter(letta: letter);  case "p": addLetter(letta: letter)
    case "q": addLetter(letta: letter);  case "r": addLetter(letta: letter)
    case "s": addLetter(letta: letter);  case "t": addLetter(letta: letter)
    case "u": addLetter(letta: letter);  case "v": addLetter(letta: letter)
    case "w": addLetter(letta: letter);  case "x": addLetter(letta: letter)
    case "y": addLetter(letta: letter);  case "z": addLetter(letta: letter)
    
    // upper-case:
    case "A": addLetter(letta: letter);  case "B": addLetter(letta: letter)
    case "C": addLetter(letta: letter);  case "D": addLetter(letta: letter)
    case "E": addLetter(letta: letter);  case "F": addLetter(letta: letter)
    case "G": addLetter(letta: letter);  case "H": addLetter(letta: letter)
    case "I": addLetter(letta: letter);  case "J": addLetter(letta: letter)
    case "K": addLetter(letta: letter);  case "L": addLetter(letta: letter)
    case "M": addLetter(letta: letter);  case "N": addLetter(letta: letter)
    case "O": addLetter(letta: letter);  case "P": addLetter(letta: letter)
    case "Q": addLetter(letta: letter);  case "R": addLetter(letta: letter)
    case "S": addLetter(letta: letter);  case "T": addLetter(letta: letter)
    case "U": addLetter(letta: letter);  case "V": addLetter(letta: letter)
    case "W": addLetter(letta: letter);  case "X": addLetter(letta: letter)
    case "Y": addLetter(letta: letter);  case "Z": addLetter(letta: letter)
    
    // numbers:
    case "0": addLetter(letta: letter);  case "1": addLetter(letta: letter)
    case "2": addLetter(letta: letter);  case "3": addLetter(letta: letter)
    case "4": addLetter(letta: letter);  case "5": addLetter(letta: letter)
    case "6": addLetter(letta: letter);  case "7": addLetter(letta: letter)
    case "8": addLetter(letta: letter);  case "9": addLetter(letta: letter)

      
    // punctuation:
    case " ": addLetter(letta: letter)
    case ",": addLetter(letta: letter);    case ".": addLetter(letta: letter)
    case "?": addLetter(letta: letter);    case "!": addLetter(letta: letter)
    case ";": addLetter(letta: letter);    case ":": addLetter(letta: letter)    /*
    case "...": addLetter(letta: letter);  case "--": addLetter(letta: letter)   */
      
      
      // symbols:
    case "@": addLetter(letta: letter);    case "#": addLetter(letta: letter)
    case "$": addLetter(letta: letter);    case "%": addLetter(letta: letter)
    case "^": addLetter(letta: letter);    case "&": addLetter(letta: letter)
    case "*": addLetter(letta: letter);    case "(": addLetter(letta: letter)
    case ")": addLetter(letta: letter);    case "-": addLetter(letta: letter)
    case "=": addLetter(letta: letter);    case "+": addLetter(letta: letter)
    case "_": addLetter(letta: letter);    case "{": addLetter(letta: letter)
    case "}": addLetter(letta: letter);    case "[": addLetter(letta: letter)
    case "]": addLetter(letta: letter);    case "\\": addLetter(letta: letter)
    case "|": addLetter(letta: letter);    case "\"": addLetter(letta: letter)
    case "'": addLetter(letta: letter);    case "/": addLetter(letta: letter)
    case ">": addLetter(letta: letter);    case "<": addLetter(letta: letter)
    case "`": addLetter(letta: letter);    case "~": addLetter(letta: letter)
    
    default: print("letter not found:", letter); fatalError()
    }
    
  }
  
  assert(letters != [])
  return letters
}

// FIXME: Refactor this in AppCode
public func makeSentence(letters: [Letter],
              atPoint point: CGPoint = CGPoint(-300,300),
              inScene scene: SKScene = gScene!) -> Sentence {
  
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
    
    findHeight: do {/*
      let height = letter.frame.height
      if height > lastHeight { letter.position.y += ((height - lastHeight) / 2) }
      else if height < lastHeight { letter.position.y -= ((lastHeight - height) / 2) }
      
      lastHeight = height
      nextPoint.y = letter.position.y*/
    }
  }
  
  return letters
}

/* Placeholder:
  public func makeSentence(words: [Word]) -> Sentence {
    
    func joinWord() {} // pairs of two?
    
    return Sentence()
  }
*/


