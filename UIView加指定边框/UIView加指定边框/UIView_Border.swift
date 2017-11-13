//
//  UIView_Border.swift
//  UIView加指定边框
//
//  Created by Snake on 2017/11/13.
//  Copyright © 2017年 Snake. All rights reserved.
//

import Foundation

extension UIView {
    
    enum borderType: String {
        case TOP = "TOP"
        case LEFT = "LEFT"
        case RIGHT = "RIGHT"
        case DOWN = "DOWN"
        case ALL = "ALL"
    }
    
    func addBorderView(borderType: borderType, borderWidth: CGFloat, borderColor: CGColor) {
        
        if borderType.rawValue == "ALL" {
            self.layer.borderWidth = borderWidth
            self.layer.borderColor = borderColor
        }
        
        if borderType.rawValue == "TOP" {
            let startPoint: CGPoint = CGPoint.init(x: 0, y: 0)
            let endPoint: CGPoint = CGPoint.init(x: self.frame.size.width, y: 0)
            self.layer.addSublayer(self.addLine(startPoint: startPoint, endPoint: endPoint, borderWidth: borderWidth, borderColor: borderColor))
        }
        
        if borderType.rawValue == "LEFT" {
            let startPoint: CGPoint = CGPoint.init(x: 0, y: 0)
            let endPoint: CGPoint = CGPoint.init(x: 0, y: self.frame.size.height)
            self.layer.addSublayer(self.addLine(startPoint: startPoint, endPoint: endPoint, borderWidth: borderWidth, borderColor: borderColor))
        }
        
        if borderType.rawValue == "RIGHT" {
            let startPoint: CGPoint = CGPoint.init(x: self.frame.size.width, y: 0)
            let endPoint: CGPoint = CGPoint.init(x: self.frame.size.width, y: self.frame.size.height)
            self.layer.addSublayer(self.addLine(startPoint: startPoint, endPoint: endPoint, borderWidth: borderWidth, borderColor: borderColor))
        }
        
        if borderType.rawValue == "DOWN" {
            let startPoint: CGPoint = CGPoint.init(x: 0, y: self.frame.size.height)
            let endPoint: CGPoint = CGPoint.init(x: self.frame.size.width, y: self.frame.size.height)
            self.layer.addSublayer(self.addLine(startPoint: startPoint, endPoint: endPoint, borderWidth: borderWidth, borderColor: borderColor))
        }
        
    }
    
    func addLine(startPoint: CGPoint, endPoint: CGPoint, borderWidth: CGFloat, borderColor: CGColor) -> CAShapeLayer {
        
        let bezierPath: UIBezierPath = UIBezierPath.init()
        bezierPath.move(to: startPoint)
        bezierPath.addLine(to: endPoint)
        
        let shapeLayer: CAShapeLayer = CAShapeLayer.init()
        shapeLayer.strokeColor = borderColor
        shapeLayer.fillColor = UIColor.clear.cgColor
        
        shapeLayer.path = bezierPath.cgPath
        
        shapeLayer.lineWidth = borderWidth
        
        return shapeLayer
    }
    
    
}
