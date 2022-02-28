//
//  SettingController.swift
//  Settings
//
//  Created by Gino Tasis on 2/28/22.
//  Copyright © 2022 Karl Pfister. All rights reserved.
//

import Foundation
import UIKit

class SettingController {
    
    let settings: [Setting] = {
        let music = Setting(imageApp: #imageLiteral(resourceName: "iTunes"), appName: "Music", isOn: false)
        let appStore = Setting(imageApp: #imageLiteral(resourceName: "iTunes"), appName: "App Store", isOn: false)
        let books = Setting(imageApp: #imageLiteral(resourceName: "iBooks"), appName: "Books", isOn: true)
        
        return [music, appStore, books]
        
    }()
    
    func toggleIsOn(for setting: Setting) {
        
        setting.isOn = !setting.isOn
        
    }
    
}
