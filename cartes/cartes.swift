//
//  cartes.swift
//  cartes
//
//  Created by Antoine FeuFeu on 02/04/2016.
//  Copyright © 2016 Antoine FeuFeu. All rights reserved.
//

import Foundation
import SpriteKit

class cartes: SKSpriteNode {
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
    
    init(image: String) {
        
        let carte = SKTexture(imageNamed: image)
        super.init(texture: carte, color: UIColor.blueColor(), size: carte.size())
        
    }
    
    
}
