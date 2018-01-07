//
//  ViewController.swift
//  Discovery
//
//  Created by 宋征 on 2018/1/3.
//  Copyright © 2018年 宋征. All rights reserved.
//

import UIKit
import MBProgressHUD
import szFramework

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let a = 5
        let models = [TestModel1]()
        let hud = MBProgressHUD.showAdded(to: self.view, animated: true)
        hud.mode = MBProgressHUDMode.determinate
        hud.progress = 0.5

        hud.label.text = "测试转评"
        hud.label.textColor = UIColor.white
        //hud.detailsLabel.text = "详情文本"
        hud.bezelView.color = UIColor.black

        //hud.button = btn
        hud.backgroundView.style = MBProgressHUDBackgroundStyle.blur
        hud.alpha = 0

        let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))

        btn.setTitle("点击btn", for: UIControlState.normal)
        btn.setTitleColor(UIColor.blue, for: UIControlState.normal)
        btn.addTarget(self, action: #selector(self.changebtnClick1(_:)), for: UIControlEvents.touchUpInside)
        self.view.addSubview(btn)
        btn.center = self.view.center
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc func changebtnClick1(_ btn:UIButton){
        szFramework.openXib()
    }

}

