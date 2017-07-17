//
//  GameViewController.swift
//  MarbleMaze
//
//  Created by Alex McPherson on 17/07/2017.
//  Copyright © 2017 Alex McPherson. All rights reserved.
//

import UIKit
import QuartzCore
import SceneKit

class GameViewController: UIViewController {
    
    var scnView: SCNView!
    var scnScene: SCNScene!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupScene()
        setupNodes()
        setupSounds()
        
    }
    
    func setupScene() {
        scnView = self.view as! SCNView
        scnView.delegate = self
        scnView.allowsCameraControl = true
        scnView.showsStatistics = true
        scnScene = SCNScene(named: "art.scnassets/game.scn")
        scnView.scene = scnScene
    }
    
    func setupNodes() {
        
    }
    
    func setupSounds() {
        
    }
    
    override var shouldAutorotate: Bool {
        return true
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

}

extension GameViewController: SCNSceneRendererDelegate {
    func renderer(_ renderer: SCNSceneRenderer, updateAtTime time: TimeInterval) {
        
    }
}
