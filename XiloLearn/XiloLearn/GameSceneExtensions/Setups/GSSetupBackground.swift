//
//  GSSetupBackground.swift
//  XiloLearn
//
//  Created by Pedro Mezacasa Muller on 25/09/23.
//

import Foundation
import SpriteKit

extension GameScene {
    
    /// Função responsável por setar o plano de fundo da imagem. Ela possui as mesmas dimensões da GameScene
    func setupBackground() {
        // MARK: Old code for image in the background
//        xiloBackground = SKSpriteNode(imageNamed: "XilofoneFake")
//        xiloBackground?.size = CGSize(width: self.size.width, height: self.size.height)
//        xiloBackground?.position = .zero
//        xiloBackground?.zPosition = -30
//        addChild(xiloBackground!)
        
        self.backgroundColor = .white
    }
}
