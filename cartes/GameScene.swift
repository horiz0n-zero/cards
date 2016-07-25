//
//  GameScene.swift
//  cartes
//
//  Created by Antoine FeuFeu on 02/04/2016.
//  Copyright (c) 2016 Antoine FeuFeu. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    let artica = cartes(image: "a")
    let molta = cartes(image: "m")
    
    override init(size: CGSize) {
        super.init(size: size)
        addChild(artica)
        addChild(molta)
        artica.position = CGPoint(x: self.frame.minX + self.frame.width/4, y: self.frame.width/2)
        molta.position = CGPoint(x: self.frame.maxX - self.frame.width/4, y: self.frame.width/2)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch in touches {
            let location = touch.locationInNode(self)
            let last = nodeAtPoint(location)
            last.position = location
            last.runAction(SKAction.scaleTo(1.1, duration: 0.2))
            last.zPosition = 15
            
        }
    }
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch in touches {
            let location = touch.locationInNode(self)
            let last = nodeAtPoint(location)
            last.children.last?.position = last.position
            last.position = location
            
        }
    }
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch in touches {
            let location = touch.locationInNode(self)
            let last = nodeAtPoint(location)
            last.position = location
            last.runAction(SKAction.scaleTo(1.0, duration: 0.2))
            last.zPosition = 0
        }
    }
    
}
