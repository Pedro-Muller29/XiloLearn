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
        
        let larguraGeral = regraDe3ParaLargura(107)
        let alturaGeral = regraDe3ParaAltura(596)
        let alturaMenu = regraDe3ParaAltura(380)
        let alturaNotas = alturaGeral/2 - regraDe3ParaAltura(62)
        let alturaLetra = alturaGeral/2 - regraDe3ParaAltura(97)
        
        // Tecla vermelha, Dó, C1
        let cKey: SKShapeNode = SKShapeNode(
            rectOf: CGSize(
                width: larguraGeral,
                height: alturaGeral),
            cornerRadius: 20)
        cKey.position = CGPoint(x: self.frame.minX + (0.5 * larguraGeral) - 1, y: alturaMenu)
        cKey.lineWidth = 0
        cKey.fillColor = .systemRed
        cKey.strokeColor = UIColor(red: 255/255, green: 180/255, blue: 175/255, alpha: 1)
        cKey.zPosition = 50
        cKey.name = "nodeC"
        self.xiloKeysToNode[.C] = cKey
        self.nodeToXiloKeys[cKey] = .C
        self.addChild(cKey)
        
//        let cKeyWhiteBall: SKShapeNode = SKShapeNode(circleOfRadius: regraDe3ParaLargura(15))
//        cKeyWhiteBall.lineWidth = 0
//        cKeyWhiteBall.zPosition = 100
//        cKeyWhiteBall.fillColor = .black
//        cKeyWhiteBall.position = CGPoint(x: 0, y: -alturaMenu + regraDe3ParaAltura(110))
//        cKey.addChild(cKeyWhiteBall)
        
        let doLabel: SKLabelNode = SKLabelNode(text: "Dó")
        doLabel.zPosition = 100
        doLabel.fontColor = .white
        doLabel.fontSize = 50
        doLabel.position = CGPoint(x: 0, y: alturaNotas)
        
        let cLabel: SKLabelNode = SKLabelNode(text: "C")
        cLabel.zPosition = 100
        cLabel.fontColor = .white
        cLabel.fontSize = 30
        cLabel.position = CGPoint(x: 0, y: alturaLetra)
        
        cKey.addChild(doLabel)
        cKey.addChild(cLabel)
        
        // Tecla laranja, Ré, D1
        let dKey: SKShapeNode = SKShapeNode(
            rectOf: CGSize(
                width: larguraGeral,
                height: alturaGeral),
            cornerRadius: 20)
        dKey.position = CGPoint(x: self.frame.minX + (1.5 * larguraGeral) - 1, y: alturaMenu)
        dKey.lineWidth = 0
        dKey.fillColor = .systemOrange
        dKey.strokeColor = UIColor(red: 255/255, green: 223/255, blue: 179/255, alpha: 1)
        dKey.zPosition = 50
        dKey.name = "nodeD"
        self.xiloKeysToNode[.D1] = dKey
        self.nodeToXiloKeys[dKey] = .D1
        self.addChild(dKey)
        
//        let dKeyWhiteBall: SKShapeNode = SKShapeNode(circleOfRadius: regraDe3ParaLargura(15))
//        dKeyWhiteBall.lineWidth = 0
//        dKeyWhiteBall.zPosition = 100
//        dKeyWhiteBall.fillColor = .white
//        dKeyWhiteBall.position = CGPoint(x: self.frame.minX + larguraGeral/2 + (larguraGeral * 1), y: alturaMenu)
//        dKey.addChild(dKeyWhiteBall)
        
        let reLabel: SKLabelNode = SKLabelNode(text: "Ré")
        reLabel.zPosition = 100
        reLabel.fontColor = .white
        reLabel.fontSize = 50
        reLabel.position = CGPoint(x: 0, y: alturaNotas)
        
        let dLabel: SKLabelNode = SKLabelNode(text: "D")
        dLabel.zPosition = 100
        dLabel.fontColor = .white
        dLabel.fontSize = 30
        dLabel.position = CGPoint(x: 0, y: alturaLetra)
        
        dKey.addChild(reLabel)
        dKey.addChild(dLabel)
        
        // Tecla Amarela, Mi, E1
        let eKey: SKShapeNode = SKShapeNode(
            rectOf: CGSize(
                width: larguraGeral,
                height: alturaGeral),
            cornerRadius: 20)
        eKey.position = CGPoint(x: self.frame.minX + (2.5 * larguraGeral) - 1, y: alturaMenu)
        eKey.lineWidth = 0
        eKey.fillColor = .systemYellow
        eKey.strokeColor = UIColor(red: 255/255, green: 240/255, blue: 179/255, alpha: 1)
        eKey.zPosition = 50
        eKey.name = "nodeE"
        self.xiloKeysToNode[.E1] = eKey
        self.nodeToXiloKeys[eKey] = .E1
        self.addChild(eKey)
        
//        let eKeyWhiteBall: SKShapeNode = SKShapeNode(circleOfRadius: regraDe3ParaLargura(15))
//        eKeyWhiteBall.lineWidth = 0
//        eKeyWhiteBall.zPosition = 100
//        eKeyWhiteBall.fillColor = .white
//        eKeyWhiteBall.position = CGPoint(x: self.frame.minX + larguraGeral/2 + (larguraGeral * 2), y: alturaMenu)
//        eKey.addChild(eKeyWhiteBall)
        
        let miLabel: SKLabelNode = SKLabelNode(text: "Mi")
        miLabel.zPosition = 100
        miLabel.fontColor = .white
        miLabel.fontSize = 50
        miLabel.position = CGPoint(x: 0, y: alturaNotas)
        
        let eLabel: SKLabelNode = SKLabelNode(text: "E")
        eLabel.zPosition = 100
        eLabel.fontColor = .white
        eLabel.fontSize = 30
        eLabel.position = CGPoint(x: 0, y: alturaLetra)
        eKey.addChild(miLabel)
        eKey.addChild(eLabel)
        
        // Tecla Verde, Fá, F
        let fKey: SKShapeNode = SKShapeNode(
            rectOf: CGSize(
                width: larguraGeral,
                height: alturaGeral),
            cornerRadius: 20)
        fKey.position = CGPoint(x: self.frame.minX + (3.5 * larguraGeral) - 1, y: alturaMenu)
        fKey.lineWidth = 0
        fKey.fillColor = .systemGreen
        fKey.strokeColor = UIColor(red: 191/255, green: 238/255, blue: 203/255, alpha: 1)
        fKey.zPosition = 50
        fKey.name = "nodeF"
        self.xiloKeysToNode[.F] = fKey
        self.nodeToXiloKeys[fKey] = .F
        self.addChild(fKey)
        
        let faLabel: SKLabelNode = SKLabelNode(text: "Fá")
        faLabel.zPosition = 100
        faLabel.fontColor = .white
        faLabel.fontSize = 50
        faLabel.position = CGPoint(x: 0, y: alturaNotas)
        
        let fLabel: SKLabelNode = SKLabelNode(text: "F")
        fLabel.zPosition = 100
        fLabel.fontColor = .white
        fLabel.fontSize = 30
        fLabel.position = CGPoint(x: 0, y: alturaLetra)
        
        fKey.addChild(faLabel)
        fKey.addChild(fLabel)
        
//        let fKeyWhiteBall: SKShapeNode = SKShapeNode(circleOfRadius: regraDe3ParaLargura(15))
//        fKeyWhiteBall.lineWidth = 0
//        fKeyWhiteBall.zPosition = 100
//        fKeyWhiteBall.fillColor = .white
//        fKeyWhiteBall.position = CGPoint(x: self.frame.minX + larguraGeral/2 + (larguraGeral * 3), y: alturaMenu)
//        fKey.addChild(fKeyWhiteBall)
        
        // Tecla Verde Escuro, Sol, G
        let gKey: SKShapeNode = SKShapeNode(
            rectOf: CGSize(
                width: larguraGeral,
                height: alturaGeral),
            cornerRadius: 20)
        gKey.position = CGPoint(x: self.frame.minX + (4.5 * larguraGeral) - 1, y: alturaMenu)
        gKey.lineWidth = 0
        gKey.fillColor = UIColor(red: 0, green: 146/255, blue: 42/255, alpha: 1)
        gKey.strokeColor = UIColor(red: 120/255, green: 255/255, blue: 159/255, alpha: 1)
        gKey.zPosition = 50
        gKey.name = "nodeG"
        self.xiloKeysToNode[.G] = gKey
        self.nodeToXiloKeys[gKey] = .G
        self.addChild(gKey)
        
//        let gKeyWhiteBall: SKShapeNode = SKShapeNode(circleOfRadius: regraDe3ParaLargura(15))
//        gKeyWhiteBall.lineWidth = 0
//        gKeyWhiteBall.zPosition = 100
//        gKeyWhiteBall.fillColor = .white
//        gKeyWhiteBall.position = CGPoint(x: 0, y: altura)
//        gKey.addChild(gKeyWhiteBall)
        
        let solLabel: SKLabelNode = SKLabelNode(text: "Sol")
        solLabel.zPosition = 100
        solLabel.fontColor = .white
        solLabel.fontSize = 50
        solLabel.position = CGPoint(x: 0, y: alturaNotas)
        
        let gLabel: SKLabelNode = SKLabelNode(text: "G")
        gLabel.zPosition = 100
        gLabel.fontColor = .white
        gLabel.fontSize = 30
        gLabel.position = CGPoint(x: 0, y: alturaLetra)
        
        gKey.addChild(solLabel)
        gKey.addChild(gLabel)
        
        // Tecla Ciano, Lá, A
        let aKey: SKShapeNode = SKShapeNode(
            rectOf: CGSize(
                width: larguraGeral,
                height: alturaGeral),
            cornerRadius: 20)
        aKey.position = CGPoint(x: self.frame.minX + (5.5 * larguraGeral) - 1, y: alturaMenu)
        aKey.lineWidth = 0
        aKey.fillColor = .systemCyan
        aKey.strokeColor = UIColor(red: 176/255, green: 232/255, blue: 255/255, alpha: 1)
        aKey.zPosition = 50
        aKey.name = "nodeA"
        self.xiloKeysToNode[.A] = aKey
        self.nodeToXiloKeys[aKey] = .A
        self.addChild(aKey)
        
//        let aKeyWhiteBall: SKShapeNode = SKShapeNode(circleOfRadius: regraDe3ParaLargura(15))
//        aKeyWhiteBall.lineWidth = 0
//        aKeyWhiteBall.zPosition = 100
//        aKeyWhiteBall.fillColor = .white
//        aKeyWhiteBall.position = CGPoint(x: self.frame.minX + larguraGeral/2 + (larguraGeral * 5), y: alturaMenu)
//        aKey.addChild(aKeyWhiteBall)
        
        let laLabel: SKLabelNode = SKLabelNode(text: "Lá")
        laLabel.zPosition = 100
        laLabel.fontColor = .white
        laLabel.fontSize = 50
        laLabel.position = CGPoint(x: 0, y: alturaNotas)
        
        let aLabel: SKLabelNode = SKLabelNode(text: "A")
        aLabel.zPosition = 100
        aLabel.fontColor = .white
        aLabel.fontSize = 30
        aLabel.position = CGPoint(x: 0, y: alturaLetra)
        
        aKey.addChild(laLabel)
        aKey.addChild(aLabel)
        
        // Tecla Azul, Si, B
        let bKey: SKShapeNode = SKShapeNode(
            rectOf: CGSize(
                width: larguraGeral,
                height: alturaGeral),
            cornerRadius: 20)
        bKey.position = CGPoint(x: self.frame.minX + (6.5 * larguraGeral) - 1, y: alturaMenu)
        bKey.lineWidth = 0
        bKey.fillColor = .systemBlue
        bKey.strokeColor = UIColor(red: 179/255, green: 215/255, blue: 255/255, alpha: 1)
        bKey.zPosition = 50
        bKey.name = "nodeB"
        self.xiloKeysToNode[.B] = bKey
        self.nodeToXiloKeys[bKey] = .B
        self.addChild(bKey)
        
//        let bKeyWhiteBall: SKShapeNode = SKShapeNode(circleOfRadius: regraDe3ParaLargura(15))
//        bKeyWhiteBall.lineWidth = 0
//        bKeyWhiteBall.zPosition = 100
//        bKeyWhiteBall.fillColor = .white
//        bKeyWhiteBall.position = CGPoint(x: self.frame.minX + larguraGeral/2 + (larguraGeral * 6), y: alturaMenu)
//        bKey.addChild(bKeyWhiteBall)
        
        let siLabel: SKLabelNode = SKLabelNode(text: "Si")
        siLabel.zPosition = 100
        siLabel.fontColor = .white
        siLabel.fontSize = 50
        siLabel.position = CGPoint(x: 0, y: alturaNotas)
        
        let bLabel: SKLabelNode = SKLabelNode(text: "B")
        bLabel.zPosition = 100
        bLabel.fontColor = .white
        bLabel.fontSize = 30
        bLabel.position = CGPoint(x: 0, y: alturaLetra)
        
        bKey.addChild(siLabel)
        bKey.addChild(bLabel)
        
        // Tecla Roxa, Dó, C2
        let c2Key: SKShapeNode = SKShapeNode(
            rectOf: CGSize(
                width: larguraGeral,
                height: alturaGeral),
            cornerRadius: 20)
        c2Key.position = CGPoint(x: self.frame.minX + (7.5 * larguraGeral) - 1, y: alturaMenu)
        c2Key.lineWidth = 0
        c2Key.fillColor = .systemPurple
        c2Key.strokeColor = UIColor(red: 224/255, green: 189/255, blue: 242/255, alpha: 1)
        c2Key.zPosition = 50
        c2Key.name = "nodeC2"
        self.xiloKeysToNode[.C2] = c2Key
        self.nodeToXiloKeys[c2Key] = .C2
        self.addChild(c2Key)
        
//        let c2KeyWhiteBall: SKShapeNode = SKShapeNode(circleOfRadius: regraDe3ParaLargura(15))
//        c2KeyWhiteBall.lineWidth = 0
//        c2KeyWhiteBall.zPosition = 100
//        c2KeyWhiteBall.fillColor = .white
//        c2KeyWhiteBall.position = CGPoint(x: self.frame.minX + larguraGeral/2 + (larguraGeral * 7), y: alturaMenu)
//        c2Key.addChild(c2KeyWhiteBall)
        
        let do2Label: SKLabelNode = SKLabelNode(text: "Dó")
        do2Label.zPosition = 100
        do2Label.fontColor = .white
        do2Label.fontSize = 50
        do2Label.position = CGPoint(x: 0, y: alturaNotas)
        
        let c2Label: SKLabelNode = SKLabelNode(text: "C")
        c2Label.zPosition = 100
        c2Label.fontColor = .white
        c2Label.fontSize = 30
        c2Label.position = CGPoint(x: 0, y: alturaLetra)
        
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
