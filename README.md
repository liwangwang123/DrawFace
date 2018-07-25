# DrawFace
用UIGraphicsGetCurrentContext画人脸

![界面截图](https://github.com/liwangwang123/DrawFace/blob/master/Quartz2D/8822BBA7-4B65-40FD-AE7A-76041D8E066A.png)

原理网上很多,就不说了. 给自己学习的过程增加的乐趣,比单独画一些横线,曲线,椭圆要印象深刻!
1, 脸的轮廓,用椭圆.

    // 1. 轮廓
    func drawOutline() {
        //获取到当前绘制上下文
        guard let context = UIGraphicsGetCurrentContext() else {
            return
        }
        let path = CGMutablePath()
        // 给一个矩形尺寸,会绘制一个内切与矩形的圆
        path.addEllipse(in: CGRect(x: 50, y: 200, width: 300, height: 450))
        context.addPath(path)
        context.strokePath()
        
    }
    
    // 2. 眉毛-用两段圆弧组成
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
    
    // 3. 眼睛-用椭圆绘制
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
    
    // 4. 眼珠-用椭圆绘制成圆形
    func drawEyeball() {
        guard let context = UIGraphicsGetCurrentContext() else {
            return
        }
        
        // 添加轮廓
        // let path = CGMutablePath()
        // path.addEllipse(in: CGRect(x: 145, y: 310, width: 10, height: 10))
        
        // 添加填充模式
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
        //to: 终点,  control: 起点与终点的切线的交点
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
    
