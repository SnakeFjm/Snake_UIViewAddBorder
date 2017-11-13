//
//  ViewController.swift
//  UIView加指定边框
//
//  Created by Snake on 2017/11/13.
//  Copyright © 2017年 Snake. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let view1: UIView = UIView.init(frame: CGRect.init(x: 10, y: 100, width: 10, height: 10))
        let view2: UIView = UIView.init(frame: CGRect.init(x: 30, y: 100, width: 10, height: 10))
        let view3: UIView = UIView.init(frame: CGRect.init(x: 50, y: 100, width: 10, height: 10))
        let view4: UIView = UIView.init(frame: CGRect.init(x: 70, y: 100, width: 10, height: 10))
        let view5: UIView = UIView.init(frame: CGRect.init(x: 90, y: 100, width: 10, height: 10))
        
        view1.backgroundColor = UIColor.red
        view2.backgroundColor = UIColor.red
        view3.backgroundColor = UIColor.red
        view4.backgroundColor = UIColor.red
        view5.backgroundColor = UIColor.red

        self.view.addSubview(view1)
        self.view.addSubview(view2)
        self.view.addSubview(view3)
        self.view.addSubview(view4)
        self.view.addSubview(view5)

        view1.addBorderView(borderType: .ALL, borderWidth: 2, borderColor: UIColor.blue.cgColor)
        view2.addBorderView(borderType: .TOP, borderWidth: 2, borderColor: UIColor.blue.cgColor)
        view3.addBorderView(borderType: .LEFT, borderWidth: 2, borderColor: UIColor.blue.cgColor)
        view4.addBorderView(borderType: .RIGHT, borderWidth: 2, borderColor: UIColor.blue.cgColor)
        view5.addBorderView(borderType: .DOWN, borderWidth: 2, borderColor: UIColor.blue.cgColor)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

