//
//  RoundedButton.swift
//  Calculator
//
//  Created by Hua Son Tung on 21/03/2022.
//

import UIKit

@IBDesignable
class RoundedButton: UIButton {

    @IBInspectable var roundedButton: Bool = false {
        didSet {
            if roundedButton {
                layer.cornerRadius = frame.height / 2
            }
        }
    }
}
