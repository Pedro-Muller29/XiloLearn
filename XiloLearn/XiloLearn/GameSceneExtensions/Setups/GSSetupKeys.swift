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
        
        let larguraGeral = regraDe3ParaLargura(106)
        let alturaGeral = regraDe3ParaAltura(596)
        let alturaMenu = regraDe3ParaAltura(111)
        
        // Tecla vermelha, Dó, C1
        let cKey: SKShapeNode = SKShapeNode(
            rect: CGRect(
                x: self.frame.minX,
                y: self.frame.maxY - alturaMenu,
                width: larguraGeral,
                height: alturaGeral)
            , cornerRadius: 20)
        cKey.lineWidth = 0
        cKey.fillColor = .systemRed
        cKey.zPosition = 50
        cKey.name = "nodeC"
        self.xiloKeysToNode[.C] = cKey
        self.nodeToXiloKeys[cKey] = .C
        self.addChild(cKey)
        
        // Tecla laranja, Ré, D1
        let dKey: SKShapeNode = SKShapeNode(
            rect: CGRect(
                x: self.frame.minX + larguraGeral,
                y: self.frame.maxY - alturaMenu,
                width: larguraGeral,
                height: alturaGeral)
            , cornerRadius: 20)
        dKey.lineWidth = 0
        dKey.fillColor = .systemOrange
        dKey.zPosition = 50
        dKey.name = "nodeD"
        self.xiloKeysToNode[.D1] = dKey
        self.nodeToXiloKeys[dKey] = .D1
        self.addChild(dKey)
        
        // Tecla Amarela, Mi, E1
        let eKey: SKShapeNode = SKShapeNode(
            rect: CGRect(
                x: self.frame.minX + (larguraGeral * 2),
                y: self.frame.maxY - alturaMenu,
                width: larguraGeral,
                height: alturaGeral)
            , cornerRadius: 20)
        eKey.lineWidth = 0
        eKey.fillColor = .systemYellow
        eKey.zPosition = 50
        eKey.name = "nodeE"
        self.xiloKeysToNode[.E1] = eKey
        self.nodeToXiloKeys[eKey] = .E1
        self.addChild(eKey)
        
        // Tecla Verde, Fá, F
        let fKey: SKShapeNode = SKShapeNode(
            rect: CGRect(
                x: self.frame.minX + (larguraGeral * 3),
                y: self.frame.maxY - alturaMenu,
                width: larguraGeral,
                height: alturaGeral)
            , cornerRadius: 20)
        fKey.lineWidth = 0
        fKey.fillColor = .green
        fKey.zPosition = 50
        fKey.name = "nodeF"
        self.xiloKeysToNode[.F] = fKey
        self.nodeToXiloKeys[fKey] = .F
        self.addChild(fKey)
        
        // Tecla Verde Escuro, Sol, G
        let gKey: SKShapeNode = SKShapeNode(
            rect: CGRect(
                x: self.frame.minX + (larguraGeral * 4),
                y: self.frame.maxY - alturaMenu,
                width: larguraGeral,
                height: alturaGeral)
            , cornerRadius: 20)
        gKey.lineWidth = 0
        gKey.fillColor = UIColor(red: 0, green: 146/255, blue: 42/255, alpha: 1)
        gKey.zPosition = 50
        gKey.name = "nodeG"
        self.xiloKeysToNode[.G] = gKey
        self.nodeToXiloKeys[gKey] = .G
        self.addChild(gKey)
        
        // Tecla Ciano, Lá, A
        let aKey: SKShapeNode = SKShapeNode(
            rect: CGRect(
                x: self.frame.minX + (larguraGeral * 5),
                y: self.frame.maxY - alturaMenu,
                width: larguraGeral,
                height: alturaGeral)
            , cornerRadius: 20)
        aKey.lineWidth = 0
        aKey.fillColor = .systemCyan
        aKey.zPosition = 50
        aKey.name = "nodeA"
        self.xiloKeysToNode[.A] = aKey
        self.nodeToXiloKeys[aKey] = .A
        self.addChild(aKey)
        
        // Tecla Azul, Si, B
        let bKey: SKShapeNode = SKShapeNode(
            rect: CGRect(
                x: self.frame.minX + (larguraGeral * 6),
                y: self.frame.maxY - alturaMenu,
                width: larguraGeral,
                height: alturaGeral)
            , cornerRadius: 20)
        bKey.lineWidth = 0
        bKey.fillColor = .systemBlue
        bKey.zPosition = 50
        bKey.name = "nodeB"
        self.xiloKeysToNode[.B] = bKey
        self.nodeToXiloKeys[bKey] = .B
        self.addChild(bKey)
        
        // Tecla Roxa, Dó, C2
        let c2Key: SKShapeNode = SKShapeNode(
            rect: CGRect(
                x: self.frame.minX + (larguraGeral * 7),
                y: self.frame.maxY - alturaMenu,
                width: larguraGeral,
                height: alturaGeral)
            , cornerRadius: 20)
        c2Key.lineWidth = 0
        c2Key.fillColor = .systemPurple
        c2Key.zPosition = 50
        c2Key.name = "nodeC2"
        self.xiloKeysToNode[.C2] = c2Key
        self.nodeToXiloKeys[c2Key] = .C2
        self.addChild(c2Key)
    }
    
    // Isso foi criado pois usei uma largura de 1000 no figma na imagem para pegar as proporções, e o calculo dinâmico permite ajustar pra tamanhos diferentes de tela depois
    private func regraDe3ParaLargura(_ valor: CGFloat) -> CGFloat {
        return valor * (self.size.width / 844)
    }
    
    private func regraDe3ParaAltura(_ valor: CGFloat) -> CGFloat {
        return valor * (self.size.height / 390)
    }
}
