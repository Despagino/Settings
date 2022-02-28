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
