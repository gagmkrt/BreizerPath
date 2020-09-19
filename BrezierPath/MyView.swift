//
//  MyView.swift
//  BrezierPath
//
//  Created by Gag Mkrtchyan on 7/29/20.
//  Copyright © 2020 Gag Mkrtchyan. All rights reserved.
//

import UIKit

class MyView: UIView {
    var path: UIBezierPath!
    
    override func draw(_ rect: CGRect) {
        
        createTriangle()
        path.fill()
        
        UIColor.orange.setFill()
        UIColor.purple.setStroke()
        
    }
    
    func createTriangle() {
        path = UIBezierPath()
        path.move(to: .zero)
        path.addLine(to: CGPoint(x: 80, y: 0))
        path.addCurve(to: CGPoint(x: 150, y: frame.size.height - 50), controlPoint1: CGPoint(x: 125, y: 0), controlPoint2: CGPoint(x: 80, y: frame.size.height - 50))
        path.addCurve(to: CGPoint(x: 230, y: 0), controlPoint1: CGPoint(x: 220, y: frame.size.height - 50), controlPoint2: CGPoint(x: 170, y: 0))
        path.addLine(to: CGPoint(x: frame.size.width, y: 0))
        path.addLine(to: CGPoint(x: frame.size.width, y: frame.size.height))
        path.addLine(to: CGPoint(x: 0, y: frame.size.height))
        path.close()
        
        
        
        
        
        
//        path.addLine(to: CGPoint(x: frame.size.width - 20, y: 0))
//        path.addArc(withCenter: CGPoint(x: frame.size.width - 20, y: 20), radius: 20, startAngle: CGFloat(270).toRadians(), endAngle: CGFloat(0).toRadians(), clockwise: true)
//        path.addLine(to: CGPoint(x: frame.size.width, y: frame.size.height - 20))
//        path.addArc(withCenter: CGPoint(x: frame.size.width - 20, y: frame.size.height - 20), radius: 20, startAngle: CGFloat(0).toRadians(), endAngle: CGFloat(90).toRadians(), clockwise: true)
//        path.addLine(to: CGPoint(x: 50, y: frame.size.height))
//        path.addArc(withCenter: CGPoint(x: 50, y: frame.size.height - 20), radius: 20, startAngle: CGFloat(90).toRadians(), endAngle: CGFloat(180).toRadians(), clockwise: true)
//        path.addLine(to: CGPoint(x: 30, y: 30))
//        path.addArc(withCenter: CGPoint(x: 0, y: 30), radius: 30, startAngle: CGFloat(0).toRadians(), endAngle: CGFloat(270).toRadians(), clockwise: false)
        
        
        
    }
    
    
    
}
extension CGFloat {
    func toRadians() -> CGFloat {
        return self * .pi / 180
    }
}
