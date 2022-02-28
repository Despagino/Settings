import UIKit

class SettingsTableViewController: UITableViewController, SettingCellDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SettingController.shared.settings.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell", for: indexPath) as? SettingTableViewCell else { return UITableViewCell() }
        let setting = SettingController.shared.settings[indexPath.row]
        cell.delegate = self
        
        cell.updateViews(with: setting)

        return cell
    }
    
    func settingSwitchToggle(for cell: SettingTableViewCell) {
        guard let indexPath = tableView.indexPath(for: cell) else { return }
        let setting = SettingController.shared.settings[indexPath.row]
        SettingController.toggleIsOn(for: setting)
        cell.updateViews(with: setting)
    }
    

}


