//
//  ViewController.swift
//  2-light
//
//  Created by 李永杰 on 2022/7/29.
//

import UIKit
import SceneKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scnView = SCNView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
        scnView.center = self.view.center
        scnView.backgroundColor = .black
        scnView.allowsCameraControl = true
        self.view.addSubview(scnView)
        
        //
        let scene = SCNScene()
        scnView.scene = scene
        // box
        let box = SCNBox(width: 0.5, height: 0.5, length: 0.5, chamferRadius: 0.1)
        let boxNode = SCNNode()
        boxNode.geometry = box
        boxNode.position = SCNVector3Make(0, 0, -11)
        // sphere
        let sphere = SCNSphere(radius: 0.1)
        let sphereNode = SCNNode()
        sphereNode.geometry = sphere
        sphereNode.position = SCNVector3Make(0, 0, -10.5)
        
        scene.rootNode.addChildNode(boxNode)
        scene.rootNode.addChildNode(sphereNode)
        
        // light
        let light = SCNLight()
        light.type = .spot
        light.color = UIColor.yellow
        light.castsShadow = true
        let lightNode = SCNNode()
        lightNode.light = light
        lightNode.position = SCNVector3Make(0, 0, -9)
        scene.rootNode.addChildNode(lightNode)
    }


}

