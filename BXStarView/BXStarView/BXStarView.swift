//
//  BXStarView.swift
//  BXStarView
//
//  Created by xiaoxiao on 16/8/8.
//  Copyright © 2016年 bianxiang. All rights reserved.
//

//*=====================================*
//* 公司:上海笑溢网络科技有限公司            *
//* 开发作者:卞翔                        *
//* 联系QQ: 1023537528                   *
//* iOS技术交流群: 160603792              *
//* GitHub:https://github.com/bianxiang *
//* CSDN:http://blog.csdn.net/bx_jobs   *
//*=====================================*
//*/


import UIKit

class BXStarView: UIView {
    
    enum BXStarImage : String {
        
        /// 满星
        case totalImage = "rating_1"
        
        /// 半星
        case halfImage = "rating_3"
        
        /// 背景灰星
        case bgImage = "rating_2"
        
    }
    
    
    var starLevel : Double? {
        didSet {
            
            for iv in self.subviews {
                if iv.tag == 999 {
                    
                }else {
                    iv.removeFromSuperview()
                }
            }
            
            if starLevel! % 1 == 0.5{
                
                //全星
                for i in 1...Int(starLevel!) {
                    let totalImageView = UIImageView(frame: CGRectMake(CGFloat(i) * 17.5, (self.frame.height-17.5)/2, 17.5, 17.5))
                    totalImageView.image = UIImage(named: BXStarImage.totalImage.rawValue)
                    self.addSubview(totalImageView)
                }
                //半星
                let halfImageView = UIImageView(frame: CGRectMake(CGFloat(Int(starLevel!) + 1) * 17.5, (self.frame.height-17.5)/2, 17.5, 17.5))
                halfImageView.image = UIImage(named: BXStarImage.halfImage.rawValue)
                self.addSubview(halfImageView)
                
                
            }else {
                //全星
                for i in 1...Int(starLevel!) {
                    let totalImageView = UIImageView(frame: CGRectMake(CGFloat(i) * 17.5, (self.frame.height-17.5)/2, 17.5, 17.5))
                    totalImageView.image = UIImage(named: BXStarImage.totalImage.rawValue)
                    self.addSubview(totalImageView)
                }
            }
        }
    }
    
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.setup()
    }
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        self.setup()
    }
    
    
    func setup() {
        for i in 1...5 {
            let bgImageView = UIImageView(frame: CGRectMake(CGFloat(i) * 17.5, (self.frame.height-17.5)/2, 17.5, 17.5))
            bgImageView.image = UIImage(named: BXStarImage.bgImage.rawValue)
            bgImageView.tag = 999
            self.addSubview(bgImageView)
        }
    }

}
