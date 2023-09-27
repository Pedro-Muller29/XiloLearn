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
        let cKey: SKShapeNode = SKShapeNode(
            rect: CGRect(
                x: self.frame.minX + regraDe3ParaLargura(78),
                y: (-self.frame.height/2 + regraDe3ParaAltura(28)),
                width: regraDe3ParaLargura(80),
                height: regraDe3ParaAltura(426))
            , cornerRadius: 8)
        cKey.fillColor = .yellow
        cKey.zPosition = 50
        cKey.name = "nodeC"
        self.xiloKeysToNode[.C] = cKey
        self.nodeToXiloKeys[cKey] = .C
        self.addChild(cKey)
        
        let dKey: SKShapeNode = SKShapeNode(
            rect: CGRect(
                x: self.frame.minX + regraDe3ParaLargura(78 + 85),
                y: (-self.frame.height/2 + regraDe3ParaAltura(39)),
                width: regraDe3ParaLargura(80),
                height: regraDe3ParaAltura(404))
            , cornerRadius: 8)
        dKey.fillColor = .blue
        dKey.zPosition = 50
        dKey.name = "nodeD"
        self.xiloKeysToNode[.D1] = dKey
        self.nodeToXiloKeys[dKey] = .D1
        self.addChild(dKey)
        
        let eKey: SKShapeNode = SKShapeNode(
            rect: CGRect(
                x: self.frame.minX + regraDe3ParaLargura(248),
                y: (-self.frame.height/2 + regraDe3ParaAltura(50)),
                width: regraDe3ParaLargura(80),
                height: regraDe3ParaAltura(382))
            , cornerRadius: 8)
        eKey.fillColor = .cyan
        eKey.zPosition = 50
        eKey.name = "nodeE"
        self.xiloKeysToNode[.E1] = eKey
        self.nodeToXiloKeys[eKey] = .E1
        self.addChild(eKey)
        
        let fKey: SKShapeNode = SKShapeNode(
            rect: CGRect(
                x: self.frame.minX + regraDe3ParaLargura(333),
                y: (-self.frame.height/2 + regraDe3ParaAltura(61)),
                width: regraDe3ParaLargura(80),
                height: regraDe3ParaAltura(360))
            , cornerRadius: 8)
        fKey.fillColor = .green
        fKey.zPosition = 50
        fKey.name = "nodeF"
        self.xiloKeysToNode[.F] = fKey
        self.nodeToXiloKeys[fKey] = .F
        self.addChild(fKey)
        
        // MARK: NO IMAGES YET FOR THIS NODES
        
        let gKey = SKNode()
        gKey.name = "nodeG"
        self.xiloKeysToNode[.G] = gKey
        self.nodeToXiloKeys[gKey] = .G
        self.addChild(gKey)
        
        let aKey = SKNode()
        aKey.name = "nodeA"
        self.xiloKeysToNode[.A] = aKey
        self.nodeToXiloKeys[aKey] = .A
        self.addChild(aKey)
        
        let bKey = SKNode()
        bKey.name = "nodeB"
        self.xiloKeysToNode[.B] = bKey
        self.nodeToXiloKeys[bKey] = .B
        self.addChild(bKey)
    }
    
    // Isso foi criado pois usei uma largura de 1000 no figma na imagem para pegar as proporções, e o calculo dinâmico permite ajustar pra tamanhos diferentes de tela depois
    private func regraDe3ParaLargura(_ valor: CGFloat) -> CGFloat {
        return valor * (self.size.width / 1000)
    }
    
    private func regraDe3ParaAltura(_ valor: CGFloat) -> CGFloat {
        return valor * (self.size.height / 562.5)
    }
}
