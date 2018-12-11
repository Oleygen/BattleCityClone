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
        case player1 = "player-1"
    }
    
    public enum KeyboardKey : UInt16
    {
        case arrowDown = 125
        case arrowLeft = 123
        case arrowUp = 126
        case arrowRight = 124
        
        case w = 13
        case a = 0
        case s = 1
        case d = 2
        
        case esc = 53
        case space = 49
        case enter = 36
        case j = 38
        
        case anyOtherKey
    }
    
    private var minimumSizeDimension : CGFloat
    {
        return min(x: self.size.width, y: self.size.height)
    }
    
    
    var tileMap : SKTileMapNode?
    var player1Tank : SKSpriteNode?
    
    override func willMove(from view: SKView) {
        super.willMove(from: view)
        print(#function)
    }
    
    override func didMove(to view: SKView) {
        super.didMove(to: view)
        print(#function)
        self.size = view.frame.size
        
        tileMap = self.childNode(withName: NodeName.tileMap.rawValue) as? SKTileMapNode
        player1Tank = self.childNode(withName: NodeName.player1.rawValue) as? SKSpriteNode
        let size = CGSize(width: minimumSizeDimension, height: minimumSizeDimension)
        
        // let tileGroup = SKTileGroup(rules: <#T##[SKTileGroupRule]#>)
        // tileMap?.fill
    }
    
    override func sceneDidLoad() {
        super.sceneDidLoad()
        print(#function)
    }
    
    
    override func keyDown(with event: NSEvent) {
        self.handleKeyEvent(event: event)
    }
    
    override func keyUp(with event: NSEvent) {
        self.handleKeyEvent(event: event)
    }
    
    
    private func handleKeyEvent(event:NSEvent)
    {
        let key = KeyboardKey(rawValue: event.keyCode)!
        switch key {
        case .arrowDown:
            print("arrowUp")
        case .arrowUp:
            print("arrowUp")
        case .arrowLeft:
            print("arrowUp")
        case .arrowRight:
            print("arrowUp")
        case .w:
            print("w")
        case .a:
            print("a")
        case .s:
            print("s")
        case .d:
            print("s")
        case .esc:
            print("esc")
        case .space:
            print("space")
        case .enter:
            print("enter")
        case .j:
            print("j")
        case .anyOtherKey:
            print("any other key")
        }
    }
    
    
}
