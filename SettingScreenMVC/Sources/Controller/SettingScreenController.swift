import UIKit

final class SettingScreenController: UIViewController {

    var model: SettingScreenModel?

    private var settingScreenView: SettingScreenView? {
        guard isViewLoaded else { return nil }
        return view as? SettingScreenView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        model = SettingScreenModel()
        view = SettingScreenView()
    }
}

