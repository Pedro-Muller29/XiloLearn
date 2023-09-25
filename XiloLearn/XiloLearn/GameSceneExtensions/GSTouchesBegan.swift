//
//  GSTouchesBegan.swift
//  XiloLearn
//
//  Created by Gustavo Zahorcsak Matias Silvano on 25/09/23.
//

import Foundation
import SpriteKit

extension GameScene {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        // Start Button
        let touch = touches.first!
        
        if startButton!.contains(touch.location(in: self)) {
            print("touched")
        }
        
    }
}
