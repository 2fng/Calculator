//
//  RoundedButton.swift
//  Calculator
//
//  Created by Hua Son Tung on 21/03/2022.
//

import UIKit

@IBDesignable
class RoundedButton: UIButton {

    private var customCornerRadius: CGFloat = 0.0
    
    @IBInspectable
    var cornerRadius: CGFloat {
        set (newValue) {
            customCornerRadius = newValue
            layer.cornerRadius = customCornerRadius
        } get {
            return customCornerRadius
        }
    }
}
