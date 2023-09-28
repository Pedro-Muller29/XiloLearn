//
//  GSSetupScoreLabel.swift
//  XiloLearn
//
//  Created by Pedro Mezacasa Muller on 27/09/23.
//

import Foundation
import SpriteKit

extension GameScene {
    func setupScore() {
        score = ScoreShower(scene: self)
    }
}
