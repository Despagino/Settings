//
//  Setting.swift
//  Settings
//
//  Created by Gino Tasis on 2/28/22.
//  Copyright © 2022 Karl Pfister. All rights reserved.
//

import Foundation
import UIKit

class Setting {
    
    let imageApp: UIImage
    let appName: String
    var isOn: Bool
    
    init(imageApp: UIImage, appName: String, isOn: Bool) {
        self.imageApp =  imageApp
        self.appName = appName
        self.isOn = isOn
    }
    
}
