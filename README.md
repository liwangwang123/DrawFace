# DrawFace
用UIGraphicsGetCurrentContext画人脸

![界面截图](https://github.com/liwangwang123/DrawFace/blob/master/Quartz2D/8822BBA7-4B65-40FD-AE7A-76041D8E066A.png)

原理网上很多,就不说了. 给自己学习的过程增加的乐趣,比单独画一些横线,曲线,椭圆要印象深刻!
1, 脸的轮廓,用椭圆.

    // 1. 轮廓
    ```
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
    ```
