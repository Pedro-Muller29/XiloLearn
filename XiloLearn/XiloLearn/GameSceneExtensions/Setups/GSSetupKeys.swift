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
        
        let cKeyWhiteBall: SKShapeNode = SKShapeNode(circleOfRadius: regraDe3ParaLargura(15))
        cKeyWhiteBall.lineWidth = 0
        cKeyWhiteBall.zPosition = 100
        cKeyWhiteBall.fillColor = .white
        cKeyWhiteBall.position = CGPoint(x: self.frame.minX + larguraGeral/2, y: alturaMenu)
        cKey.addChild(cKeyWhiteBall)
        
        let doLabel: SKLabelNode = SKLabelNode(text: "Dó")
        doLabel.zPosition = 100
        doLabel.fontColor = .white
        doLabel.fontSize = 50
        doLabel.position = CGPoint(x: self.frame.minX + larguraGeral/2, y: alturaGeral + regraDe3ParaAltura(10))
        
        let cLabel: SKLabelNode = SKLabelNode(text: "C")
        cLabel.zPosition = 100
        cLabel.fontColor = .white
        cLabel.fontSize = 30
        cLabel.position = CGPoint(x: self.frame.minX + larguraGeral/2, y: alturaGeral - regraDe3ParaAltura(20))
        
        cKey.addChild(doLabel)
        cKey.addChild(cLabel)
        
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
        
        let dKeyWhiteBall: SKShapeNode = SKShapeNode(circleOfRadius: regraDe3ParaLargura(15))
        dKeyWhiteBall.lineWidth = 0
        dKeyWhiteBall.zPosition = 100
        dKeyWhiteBall.fillColor = .white
        dKeyWhiteBall.position = CGPoint(x: self.frame.minX + larguraGeral/2 + (larguraGeral * 1), y: alturaMenu)
        dKey.addChild(dKeyWhiteBall)
        
        let reLabel: SKLabelNode = SKLabelNode(text: "Ré")
        reLabel.zPosition = 100
        reLabel.fontColor = .white
        reLabel.fontSize = 50
        reLabel.position = CGPoint(x: self.frame.minX + larguraGeral/2 + (larguraGeral * 1), y: alturaGeral + regraDe3ParaAltura(10))
        
        let dLabel: SKLabelNode = SKLabelNode(text: "D")
        dLabel.zPosition = 100
        dLabel.fontColor = .white
        dLabel.fontSize = 30
        dLabel.position = CGPoint(x: self.frame.minX + larguraGeral/2 + (larguraGeral * 1), y: alturaGeral - regraDe3ParaAltura(20))
        
        dKey.addChild(reLabel)
        dKey.addChild(dLabel)
        
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
        
        let eKeyWhiteBall: SKShapeNode = SKShapeNode(circleOfRadius: regraDe3ParaLargura(15))
        eKeyWhiteBall.lineWidth = 0
        eKeyWhiteBall.zPosition = 100
        eKeyWhiteBall.fillColor = .white
        eKeyWhiteBall.position = CGPoint(x: self.frame.minX + larguraGeral/2 + (larguraGeral * 2), y: alturaMenu)
        eKey.addChild(eKeyWhiteBall)
        
        let miLabel: SKLabelNode = SKLabelNode(text: "Mi")
        miLabel.zPosition = 100
        miLabel.fontColor = .white
        miLabel.fontSize = 50
        miLabel.position = CGPoint(x: self.frame.minX + larguraGeral/2 + (larguraGeral * 2), y: alturaGeral + regraDe3ParaAltura(10))
        
        let eLabel: SKLabelNode = SKLabelNode(text: "E")
        eLabel.zPosition = 100
        eLabel.fontColor = .white
        eLabel.fontSize = 30
        eLabel.position = CGPoint(x: self.frame.minX + larguraGeral/2 + (larguraGeral * 2), y: alturaGeral - regraDe3ParaAltura(20))
        
        eKey.addChild(miLabel)
        eKey.addChild(eLabel)
        
        // Tecla Verde, Fá, F
        let fKey: SKShapeNode = SKShapeNode(
            rect: CGRect(
                x: self.frame.minX + (larguraGeral * 3),
                y: self.frame.maxY - alturaMenu,
                width: larguraGeral,
                height: alturaGeral)
            , cornerRadius: 20)
        fKey.lineWidth = 0
        fKey.fillColor = .systemGreen
        fKey.zPosition = 50
        fKey.name = "nodeF"
        self.xiloKeysToNode[.F] = fKey
        self.nodeToXiloKeys[fKey] = .F
        self.addChild(fKey)
        
        let faLabel: SKLabelNode = SKLabelNode(text: "Fá")
        faLabel.zPosition = 100
        faLabel.fontColor = .white
        faLabel.fontSize = 50
        faLabel.position = CGPoint(x: self.frame.minX + larguraGeral/2 + (larguraGeral * 3), y: alturaGeral + regraDe3ParaAltura(10))
        
        let fLabel: SKLabelNode = SKLabelNode(text: "F")
        fLabel.zPosition = 100
        fLabel.fontColor = .white
        fLabel.fontSize = 30
        fLabel.position = CGPoint(x: self.frame.minX + larguraGeral/2 + (larguraGeral * 3), y: alturaGeral - regraDe3ParaAltura(20))
        
        fKey.addChild(faLabel)
        fKey.addChild(fLabel)
        
        let fKeyWhiteBall: SKShapeNode = SKShapeNode(circleOfRadius: regraDe3ParaLargura(15))
        fKeyWhiteBall.lineWidth = 0
        fKeyWhiteBall.zPosition = 100
        fKeyWhiteBall.fillColor = .white
        fKeyWhiteBall.position = CGPoint(x: self.frame.minX + larguraGeral/2 + (larguraGeral * 3), y: alturaMenu)
        fKey.addChild(fKeyWhiteBall)
        
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
        
        let gKeyWhiteBall: SKShapeNode = SKShapeNode(circleOfRadius: regraDe3ParaLargura(15))
        gKeyWhiteBall.lineWidth = 0
        gKeyWhiteBall.zPosition = 100
        gKeyWhiteBall.fillColor = .white
        gKeyWhiteBall.position = CGPoint(x: self.frame.minX + larguraGeral/2 + (larguraGeral * 4), y: alturaMenu)
        gKey.addChild(gKeyWhiteBall)
        
        let solLabel: SKLabelNode = SKLabelNode(text: "Sol")
        solLabel.zPosition = 100
        solLabel.fontColor = .white
        solLabel.fontSize = 50
        solLabel.position = CGPoint(x: self.frame.minX + larguraGeral/2 + (larguraGeral * 4), y: alturaGeral + regraDe3ParaAltura(10))
        
        let gLabel: SKLabelNode = SKLabelNode(text: "G")
        gLabel.zPosition = 100
        gLabel.fontColor = .white
        gLabel.fontSize = 30
        gLabel.position = CGPoint(x: self.frame.minX + larguraGeral/2 + (larguraGeral * 4), y: alturaGeral - regraDe3ParaAltura(20))
        
        gKey.addChild(solLabel)
        gKey.addChild(gLabel)
        
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
        
        let aKeyWhiteBall: SKShapeNode = SKShapeNode(circleOfRadius: regraDe3ParaLargura(15))
        aKeyWhiteBall.lineWidth = 0
        aKeyWhiteBall.zPosition = 100
        aKeyWhiteBall.fillColor = .white
        aKeyWhiteBall.position = CGPoint(x: self.frame.minX + larguraGeral/2 + (larguraGeral * 5), y: alturaMenu)
        aKey.addChild(aKeyWhiteBall)
        
        let laLabel: SKLabelNode = SKLabelNode(text: "Lá")
        laLabel.zPosition = 100
        laLabel.fontColor = .white
        laLabel.fontSize = 50
        laLabel.position = CGPoint(x: self.frame.minX + larguraGeral/2 + (larguraGeral * 5), y: alturaGeral + regraDe3ParaAltura(10))
        
        let aLabel: SKLabelNode = SKLabelNode(text: "A")
        aLabel.zPosition = 100
        aLabel.fontColor = .white
        aLabel.fontSize = 30
        aLabel.position = CGPoint(x: self.frame.minX + larguraGeral/2 + (larguraGeral * 5), y: alturaGeral - regraDe3ParaAltura(20))
        
        aKey.addChild(laLabel)
        aKey.addChild(aLabel)
        
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
        
        let bKeyWhiteBall: SKShapeNode = SKShapeNode(circleOfRadius: regraDe3ParaLargura(15))
        bKeyWhiteBall.lineWidth = 0
        bKeyWhiteBall.zPosition = 100
        bKeyWhiteBall.fillColor = .white
        bKeyWhiteBall.position = CGPoint(x: self.frame.minX + larguraGeral/2 + (larguraGeral * 6), y: alturaMenu)
        bKey.addChild(bKeyWhiteBall)
        
        let siLabel: SKLabelNode = SKLabelNode(text: "Si")
        siLabel.zPosition = 100
        siLabel.fontColor = .white
        siLabel.fontSize = 50
        siLabel.position = CGPoint(x: self.frame.minX + larguraGeral/2 + (larguraGeral * 6), y: alturaGeral + regraDe3ParaAltura(10))
        
        let bLabel: SKLabelNode = SKLabelNode(text: "B")
        bLabel.zPosition = 100
        bLabel.fontColor = .white
        bLabel.fontSize = 30
        bLabel.position = CGPoint(x: self.frame.minX + larguraGeral/2 + (larguraGeral * 6), y: alturaGeral - regraDe3ParaAltura(20))
        
        bKey.addChild(siLabel)
        bKey.addChild(bLabel)
        
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
        
        let c2KeyWhiteBall: SKShapeNode = SKShapeNode(circleOfRadius: regraDe3ParaLargura(15))
        c2KeyWhiteBall.lineWidth = 0
        c2KeyWhiteBall.zPosition = 100
        c2KeyWhiteBall.fillColor = .white
        c2KeyWhiteBall.position = CGPoint(x: self.frame.minX + larguraGeral/2 + (larguraGeral * 7), y: alturaMenu)
        c2Key.addChild(c2KeyWhiteBall)
        
        let do2Label: SKLabelNode = SKLabelNode(text: "Dó")
        do2Label.zPosition = 100
        do2Label.fontColor = .white
        do2Label.fontSize = 50
        do2Label.position = CGPoint(x: self.frame.minX + larguraGeral/2 + (larguraGeral * 7), y: alturaGeral + regraDe3ParaAltura(10))
        
        let c2Label: SKLabelNode = SKLabelNode(text: "C")
        c2Label.zPosition = 100
        c2Label.fontColor = .white
        c2Label.fontSize = 30
        c2Label.position = CGPoint(x: self.frame.minX + larguraGeral/2 + (larguraGeral * 7), y: alturaGeral - regraDe3ParaAltura(20))
        
        c2Key.addChild(do2Label)
        c2Key.addChild(c2Label)
    }
    
    // Isso foi criado pois usei uma largura de 1000 no figma na imagem para pegar as proporções, e o calculo dinâmico permite ajustar pra tamanhos diferentes de tela depois
    func regraDe3ParaLargura(_ valor: CGFloat) -> CGFloat {
        return valor * (self.size.width / 844)
    }
    
    func regraDe3ParaAltura(_ valor: CGFloat) -> CGFloat {
        return valor * (self.size.height / 390)
    }
}
