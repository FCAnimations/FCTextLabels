
import SpriteKit
import Foundation

public extension CGPoint {
  init(_ _x: CGFloat,_ _y: CGFloat) {
    x = _x
    y = _y
    }
}

public extension CGSize {

  init(_ _width: CGFloat,_ _height: CGFloat){
    width = _width
    height = _height
  }
}

public extension SKNode {
  func width() -> CGFloat {
    return frame.width
  }
  
  func height() -> CGFloat {
    return frame.height
  }
  
  func center() -> CGPoint {
    return CGPoint(frame.midX, frame.midY)
  }
  
  func repeating(_ actions: [SKAction]) {
    run(.repeatForever(.sequence(actions)))
  }
}
