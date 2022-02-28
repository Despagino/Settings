import UIKit

protocol SettingCellDelegate: AnyObject {
    // Step 1 is to declare the protocol
    func settingSwitchToggle(for cell: SettingTableViewCell)
    
}



class SettingTableViewCell: UITableViewCell {

    // Step 2 is to create the delegate
    weak var delegate: SettingCellDelegate?

    @IBOutlet weak var settingImage: UIImageView!
    @IBOutlet weak var settingAppName: UILabel!
    @IBOutlet weak var settingSwitch: UISwitch!
    
    func updateViews(with setting: Setting) {
        
        settingImage.image = setting.imageApp
        settingAppName.text = setting.appName
        settingSwitch.isOn = setting.isOn
        
        backgroundColor = setting.isOn ? .yellow : .clear
    }
    
    
    @IBAction func toggleSwitch(_ sender: UISwitch) {
        
        delegate?.settingSwitchToggle(for: self)
        
    }
    
}
