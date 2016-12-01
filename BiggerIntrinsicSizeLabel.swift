//
//  BiggerIntrinsicSizeLabel.swift
//
//  Created by Anatoly Esaulov on 30.11.16.
//  Copyright © 2016 Obanze Dev. All rights reserved.
//

import UIKit

class BiggerIntrinsicSizeLabel: UILabel {

    @IBInspectable var additionalHeight : CGFloat = 4 {
        didSet {
            
            // To recalculate intrinsic content size
            invalidateIntrinsicContentSize()
        }
    }
    @IBInspectable var additionalWidth : CGFloat = 10 {
        didSet {
            
            // To recalculate intrinsic content size
            invalidateIntrinsicContentSize()
        }
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    override var intrinsicContentSize: CGSize {
        let superIntrinsic = super.intrinsicContentSize
        
        return (CGSize(width: superIntrinsic.width + additionalWidth, height: superIntrinsic.height + additionalHeight))
    }
    
    //TODO: Maybe add bounds recalculation method
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.clipsToBounds = true
        self.layer.cornerRadius = (super.intrinsicContentSize.height + additionalHeight) / 2
        
    }
}
