//
//  GSSetupStart.swift
//  XiloLearn
//
//  Created by Pedro Mezacasa Muller on 28/09/23.
//

import Foundation
import SpriteKit

extension GameScene {
    func setupStart() {
        self.startButton = StartButtonShower(size: CGSize(width: regraDe3ParaLargura(255), height: regraDe3ParaAltura(96)), cornerRadius: regraDe3ParaLargura(24), position: CGPoint(x: 0, y: self.frame.minY + regraDe3ParaAltura(78)), scene: self)
    }
}
