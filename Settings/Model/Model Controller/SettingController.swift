import Foundation
import UIKit

class SettingController {
    
    let settings: [Setting] = {
        let music = Setting(imageApp: #imageLiteral(resourceName: "iTunes"), appName: "Music", isOn: false)
        let appStore = Setting(imageApp: #imageLiteral(resourceName: "appStore"), appName: "App Store", isOn: false)
        let books = Setting(imageApp: #imageLiteral(resourceName: "iBooks"), appName: "Books", isOn: true)
        
        return [music, appStore, books]
        
    }()
    
    static func toggleIsOn(for setting: Setting) {
        
        setting.isOn = !setting.isOn
        
    }
    
    static let shared = SettingController()
    
}
