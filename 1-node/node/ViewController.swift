//
//  ViewController.swift
//  SceneKitDemo
//
//  Created by 李永杰 on 2022/7/28.
//

import UIKit
import QuartzCore
import SceneKit

class ViewController: UIViewController, SCNNodeRendererDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configUI()
    }
    
    func configUI() {
        // scnview
        let scnView = SCNView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
        scnView.center = self.view.center
        scnView.backgroundColor = .black
        scnView.allowsCameraControl = true
        self.view.addSubview(scnView)
        // scene
        let scene = SCNScene()
        scnView.scene = scene
        
        // node
        let node = SCNNode()
        scene.rootNode.addChildNode(node)
        // sphere
        let sphere = SCNSphere(radius: 0.5)
        node.geometry = sphere
        
        // child node
        let childNode = SCNNode()
        // position
        childNode.position = SCNVector3Make(0, 1, 1)
        // text
        let text = SCNText(string: "学习使人进步", extrusionDepth: 0.03)
        // 材质，散发，内容
        text.firstMaterial?.diffuse.contents = UIColor.red
        // font
        text.font = UIFont.systemFont(ofSize: 0.15)
        // geometry
        childNode.geometry = text
        node.addChildNode(childNode)
       
//        for _ in 0 ..< 4 {
//            let letBall1Geo = SCNSphere(radius: 0.05)
//            letBall1Geo.firstMaterial?.diffuse.contents = UIColor.red
//            letBall1Geo.firstMaterial?.specular.contents = UIColor.white
//            let ball1 = SCNNode(geometry: letBall1Geo)
//            ball1.position = SCNVector3(0, 0, -1)
//            ball1.rendererDelegate = self
//            scene.rootNode.addChildNode(ball1)
//
//        }

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }
    
}
