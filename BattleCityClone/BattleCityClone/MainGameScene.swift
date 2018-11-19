//
//  MainGameScene.swift
//  BattleCityClone
//
//  Created by oleygen ua on 11/18/18.
//  Copyright © 2018 oleygen. All rights reserved.
//

import Cocoa
import SpriteKit

class MainGameScene: SKScene {

    private enum NodeName: String
    {
        case tileMap = "tileMap"
    }
    
    private var minimumSizeDimension : CGFloat
    {
        return min(x: self.size.width, y: self.size.height)
    }
    
    
    var tileMap : SKTileMapNode?
    override func willMove(from view: SKView) {
        super.willMove(from: view)
        print(#function)
    }
    
    override func didMove(to view: SKView) {
        super.didMove(to: view)
        print(#function)
        self.size = view.frame.size
        
        tileMap = self.childNode(withName: NodeName.tileMap.rawValue) as? SKTileMapNode
        
        let size = CGSize(width: minimumSizeDimension, height: minimumSizeDimension)
        
        // let tileGroup = SKTileGroup(rules: <#T##[SKTileGroupRule]#>)
        // tileMap?.fill
    }
    
    override func sceneDidLoad() {
        super.sceneDidLoad()
        print(#function)
    }
    
    
}
