# BXStarView

##  作者:卞翔
##  联系qq:1023537528
##  QQ交流群:160603792

## BXStarView: BXStarView一个简单易用的星级Star评分小控件

![image](https://github.com/bianxiang/BXStarView/blob/master/BXStarView/BXStarView/show.png?raw=true)  



###该组件使用方法如下：
```swift
class ViewController: UIViewController {

    @IBOutlet weak var bx: BXStarView!


    override func viewDidLoad() {
        super.viewDidLoad()

        bx.starLevel = 2.5
            
        //bx.starLevel = 3
    }





}

```