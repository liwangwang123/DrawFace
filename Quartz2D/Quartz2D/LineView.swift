//
//  LineView.swift
//  Quartz2D
//
//  Created by lemo on 2018/7/24.
//  Copyright © 2018年 wangli. All rights reserved.
//

import UIKit
import CoreGraphics

class LineView: UIView {

    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        addLine()
        drawEllipse()
        drawRect()
        drawCircularArc()
        drawArc()
        drawCurve()
    }
    
    //1. 画直线
    func addLine() {
        let context = UIGraphicsGetCurrentContext()
        let path = CGMutablePath()
        // 添加起点
        path.move(to: CGPoint(x: 100, y: 100))
        path.addLine(to: CGPoint(x: 200, y: 200))
        path.addLine(to: CGPoint(x: 200, y: 300))
        path.addLine(to: CGPoint(x: 300, y: 100))
        // 设置路径
        context?.addPath(path)
        // 闭合路径
        context?.closePath()
        // 设置颜色
        context?.setStrokeColor(UIColor.red.cgColor)
        // 画线
        context?.strokePath()
    }
    
    //2. 画椭圆
    func drawEllipse() {
        let context = UIGraphicsGetCurrentContext()
        let path = CGMutablePath()
        context?.addEllipse(in: CGRect(x: 150, y: 150, width: 150, height: 100))
        context?.addPath(path)
        context?.strokePath()
    }
    
    // 3. 矩形
    func drawRect() {
        let context = UIGraphicsGetCurrentContext()
        let path = CGMutablePath()
        path.addRect(CGRect(x: 100, y: 100, width: 100, height: 100))
        context?.addPath(path)
        context?.strokePath()
    }
    
    // 4. 圆弧
    func drawCircularArc() {
        let context = UIGraphicsGetCurrentContext()
        context?.addArc(center: CGPoint(x: 160, y: 160), radius: 100, startAngle: 0, endAngle: 2, clockwise: true)
        context?.strokePath()
    }
    
    // 5. 画圆
    func drawArc() {
        let context = UIGraphicsGetCurrentContext()
        // 椭圆宽高一样就是圆
        context?.addEllipse(in: CGRect(x: 170, y: 170, width: 100, height: 100))
        context?.strokePath()
    }
    
    // 6. 曲线
    func drawCurve() {
        let context = UIGraphicsGetCurrentContext()
        let path = CGMutablePath()
        // 起始点
        path.move(to: CGPoint(x: 67, y: 250))
        path.addCurve(to: CGPoint(x: 187.5, y: 380), control1: CGPoint(x: 110, y: 370), control2: CGPoint(x: 180, y: 400))
        context?.addPath(path)
        context?.strokePath()
    }
}
