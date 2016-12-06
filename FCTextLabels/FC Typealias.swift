//
//  Typealias.swift
//  FCTextLabels
//
//  Created by Dude Guy  on 12/4/16.
//  Copyright © 2016 FC Animation. All rights reserved.
//

import SpriteKit


public typealias Letter = SKLabelNode
public typealias Word   = SKShapeNode    // <- contains [Letter]
public typealias Sentence = [SKLabelNode]  // <- contains [Word]
