//
//  Extensions.swift
//  GOT-Challenge-Swift
//
//  Created by Conrado Mateu Gisbert on 11/03/17.
//  Copyright © 2017 conradomateu. All rights reserved.
//



import Foundation
import UIKit

extension UIView {

    func setRoundedCorners() {
        cornerRadius = self.bounds.height / CGFloat(2)
    }

    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }

    @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }

    @IBInspectable var borderColor: UIColor? {
        get {
            if let color = layer.borderColor {
                return UIColor(cgColor: color)
            }

            return nil
        }
        set {
            layer.borderColor = newValue?.cgColor
        }
    }

    func removeSubviews() {
        for view in subviews {
            view.removeFromSuperview()
        }
    }
}
