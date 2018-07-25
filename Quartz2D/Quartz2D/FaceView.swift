//
//  FaceView.swift
//  Quartz2D
//
//  Created by lemo on 2018/7/25.
//  Copyright © 2018年 wangli. All rights reserved.
//

import UIKit

class FaceView: UIView {

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        drawOutline()
        drawEyebrow()
        drawEyes()
        drawEyeball()
        drawNose()
        drawNostril()
        drawMouth()
    }
    
    // 1. 轮廓
    func drawOutline() {
        guard let context = UIGraphicsGetCurrentContext() else {
            return
        }
        let path = CGMutablePath()
        // 在一个矩形里面画椭圆
        path.addEllipse(in: CGRect(x: 50, y: 200, width: 300, height: 450))
        context.addPath(path)
        context.strokePath()
        
    }
    
    // 2. 眉毛
    func drawEyebrow() {
        // 圆弧
        guard let context = UIGraphicsGetCurrentContext() else {
            return
        }
        
        let letfPath = CGMutablePath()
        let rightPath = CGMutablePath()
        letfPath.addArc(center: CGPoint(x: 150, y: 425), radius: 150, startAngle: -1.3, endAngle: 4.5, clockwise: true)
        rightPath.addArc(center: CGPoint(x: 250, y: 425), radius: 150, startAngle: -1.3, endAngle: 4.5, clockwise: true)
        context.addPath(letfPath)
        context.addPath(rightPath)
        context.strokePath()
    }
    
    // 3. 眼睛
    func drawEyes() {
        guard let context = UIGraphicsGetCurrentContext() else {
            return
        }
        
        let leftPath = CGMutablePath()
        let rightPath = CGMutablePath()
        leftPath.addEllipse(in: CGRect(x: 120, y: 300, width: 60, height: 30))
        rightPath.addEllipse(in: CGRect(x: 220, y: 300, width: 60, height: 30))
        context.addPath(leftPath)
        context.addPath(rightPath)
        context.strokePath()
    }
    
    // 4. 眼珠
    func drawEyeball() {
        guard let context = UIGraphicsGetCurrentContext() else {
            return
        }
        
        // 添加轮廓
        // let path = CGMutablePath()
        // path.addEllipse(in: CGRect(x: 145, y: 310, width: 10, height: 10))
        // 添加实体
        context.fillEllipse(in: CGRect(x: 145, y: 310, width: 10, height: 10))
        context.fillEllipse(in: CGRect(x: 245, y: 310, width: 10, height: 10))
        context.setFillColor(UIColor.black.cgColor)
        context.strokePath()
    }

    // 5. 鼻子
    func drawNose() {
        guard let context = UIGraphicsGetCurrentContext() else {
            return
        }
        // 左轮廓
        let leftPath = CGMutablePath()
        // 起点
        leftPath.move(to: CGPoint(x: 180, y: 340))
        // control 起点与终点的切线的交点
        leftPath.addQuadCurve(to: CGPoint(x: 145, y: 440), control: CGPoint(x: 200, y: 390))
        
        //右轮廓
        let rightPath = CGMutablePath()
        rightPath.move(to: CGPoint(x: 220, y: 340))
        rightPath.addQuadCurve(to: CGPoint(x: 255, y: 445), control: CGPoint(x: 200, y: 390))
        
        context.addPath(leftPath)
        context.addPath(rightPath)
        context.strokePath()
    }
    
    // 6. 鼻孔
    func drawNostril() {
        guard let context = UIGraphicsGetCurrentContext() else {
            return
        }
        
        let leftPath = CGMutablePath()
        leftPath.addArc(center: CGPoint(x: 182, y: 390), radius: 62, startAngle: 1.2, endAngle: 2.2, clockwise: false)
        context.addPath(leftPath)
        
        let rightPath = CGMutablePath()
        rightPath.addArc(center: CGPoint(x: 227, y: 390), radius: 62, startAngle: 1.1, endAngle: 2.0, clockwise: false)
        context.addPath(rightPath)
        context.strokePath()
    }
    
    // 7. 嘴唇
    func drawMouth() {
        guard let context = UIGraphicsGetCurrentContext() else {
            return
        }
        
        let topPath = CGMutablePath()
        topPath.move(to: CGPoint(x: 115, y: 480))
        topPath.addQuadCurve(to: CGPoint(x: 285, y: 480), control: CGPoint(x: 200, y: 510))
        
        let bottomPath = CGMutablePath()
        bottomPath.move(to: CGPoint(x: 115, y: 480))
        bottomPath.addQuadCurve(to: CGPoint(x: 285, y: 480), control: CGPoint(x: 200, y: 580))
        
        context.addPath(topPath)
        context.addPath(bottomPath)
        context.strokePath()
    }
}
