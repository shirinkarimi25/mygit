//
//  UIView+Extension.swift
//  gitApp
//
//  Created by Shirin Karimi on 4/24/21.
//  Copyright © 2021 Shirin Karimi. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    func makeCircle (){
        
        self.layer.masksToBounds = false
        self.layer.cornerRadius = self.frame.height/2
        self.clipsToBounds = true
    }
    
    func cornerRadius (){
        
        self.layer.cornerRadius = 8
        self.layer.masksToBounds = true
    }
}

