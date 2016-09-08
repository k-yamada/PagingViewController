//
//  UIImage+Extention.swift
//  PagingViewController
//
//  Created by Kazuhiro Yamada on 2016/09/08.
//  Copyright © 2016年 Kazuhiro Yamada. All rights reserved.
//

import UIKit

extension UIImage {
    func roundedImage(cornerRadius: CGFloat) -> UIImage {
        let rect = CGRect(origin:CGPoint(x: 0, y: 0), size: self.size)
        UIGraphicsBeginImageContextWithOptions(self.size, false, 1)
        UIBezierPath(
            roundedRect: rect,
            cornerRadius: cornerRadius
            ).addClip()
        self.drawInRect(rect)
        return UIGraphicsGetImageFromCurrentImageContext()
    }
}