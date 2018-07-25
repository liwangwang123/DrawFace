//
//  ViewController.swift
//  Quartz2D
//
//  Created by lemo on 2018/7/24.
//  Copyright © 2018年 wangli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addFace()
    }

    
    func addLine() {
        //1. 画线
        let line = LineView(frame: self.view.bounds)
        line.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        line.alpha = 0.1
        self.view.addSubview(line)
    }
    
    func addFace() {
        let face = FaceView(frame: self.view.bounds)
        face.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
        self.view.addSubview(face)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    
}

