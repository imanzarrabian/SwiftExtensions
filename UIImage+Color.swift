//
//  UIImage+Color.swift
//  
//
//  Created by Eddy Claessens on 15/06/16.
//  Copyright © 2016 Eddy Claessens. All rights reserved.
//

import UIKit

extension UIImage {
    class func imageWithColor(color: UIColor) -> UIImage {
        let rect = CGRect(x: 0.0, y: 0.0, width: 1.0, height: 1.0)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()

        CGContextSetFillColorWithColor(context, color.CGColor)
        CGContextFillRect(context, rect)

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}
