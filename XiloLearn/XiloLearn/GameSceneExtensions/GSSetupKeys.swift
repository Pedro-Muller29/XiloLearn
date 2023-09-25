//
//  GSSetupKeys.swift
//  XiloLearn
//
//  Created by Pedro Mezacasa Muller on 25/09/23.
//

import Foundation
import SpriteKit

extension GameScene {
    func setupKeys() {
        var cKey: SKShapeNode = SKShapeNode(
            rect: CGRect(
                x: self.frame.minX + regraDe3ParaLargura(78),
                y: (-self.frame.height/2 + regraDe3ParaAltura(28)),
                width: regraDe3ParaLargura(80),
                height: regraDe3ParaAltura(426))
            , cornerRadius: 8)
        cKey.fillColor = .yellow
        cKey.zPosition = 50
        cKey.name = "nodeC"
        self.addChild(cKey)
    }
    
    // Isso foi criado pois usei uma largura de 1000 no figma na imagem para pegar as proporções, e o calculo dinâmico permite ajustar pra tamanhos diferentes de tela depois
    private func regraDe3ParaLargura(_ valor: CGFloat) -> CGFloat {
        return valor * (self.size.width / 1000)
    }
    
    private func regraDe3ParaAltura(_ valor: CGFloat) -> CGFloat {
        return valor * (self.size.height / 562.5)
    }
}
