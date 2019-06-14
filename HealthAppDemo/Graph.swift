//
//  Graph.swift
//  HealthAppDemo
//
//  Created by Paul Solt on 6/14/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

import UIKit

class Graph: UIView {
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath()
        
        let x = 0
        let y = 50
        
        // starting point
        let startingPoint = CGPoint(x: x, y: y)
        path.move(to: CGPoint(x: 0, y: rect.height))
        path.addLine(to: startingPoint)
        
        for nextX in 0..<Int(rect.width) {
            if nextX % 10 == 0 {
                
                let randomY = Int.random(in: 5..<Int(rect.height / 2.0))
                let nextPoint = CGPoint(x: nextX, y: randomY)
                path.addLine(to: nextPoint)
            }
        }
        path.addLine(to: CGPoint(x: rect.width, y: 50))
        
        path.addLine(to: CGPoint(x: rect.width, y: rect.height))
        
        path.close()
        path.lineWidth = 2
        
        let primaryColor = UIColor(red: 228/255.0, green: 226/255, blue: 250/255, alpha: 1.0)
        primaryColor.setStroke()
        
        let secondaryColor = UIColor(red: 248/255.0, green: 247/255.0, blue: 254/255.0, alpha: 1.0)
        secondaryColor.setFill()
        
        
        path.fill()
        path.stroke()
    }
}
