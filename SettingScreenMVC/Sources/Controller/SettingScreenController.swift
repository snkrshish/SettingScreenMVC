import UIKit

final class SettingScreenController: UIViewController {

    var models: SettingScreenModel?

    private var settingScreenView: SettingScreenView? {
        guard isViewLoaded else { return nil }
        return view as? SettingScreenView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        models = SettingScreenModel()
        view = SettingScreenView()
        view.backgroundColor = .systemBackground
        setupNavigationBar()
        configurateView()
    }
    private func setupNavigationBar() {
        title = "Settings"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.backgroundColor = .systemBackground
    }

    //MARK: - Configurate

    func configurateView() {
        guard let models = models?.createModel() else { return }
        settingScreenView?.configurateView(models: models)
    }
}
