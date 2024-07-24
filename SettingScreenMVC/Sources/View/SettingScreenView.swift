import UIKit
import SnapKit

class SettingScreenView: UIView {
    
    private var models: [[SettingScreen]] = []

    func configurateView(models: [[SettingScreen]]) {
        self.models = models
    }
    
    //MARK: - Outles

    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .insetGrouped)
        tableView.register(SettingScreenTableViewCell.self, forCellReuseIdentifier: SettingScreenTableViewCell.identifier)
        tableView.dataSource = self
        tableView.delegate = self
        return tableView
    }()

    //MARK: - Lifecycle
    override init(frame: CGRect) {
        super.init(frame: .zero)
        commonInit()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func commonInit() {
        backgroundColor = .white
        setupHierarchy()
        setupLayout()
    }



    //MARK: - Setup
    private func setupHierarchy() {
        addSubview(tableView)
    }

    private func setupLayout() {
        tableView.snp.makeConstraints {
            $0.size.equalTo(self)
        }
    }
}

extension SettingScreenView: UITableViewDataSource, UITableViewDelegate {

    func numberOfSections(in tableView: UITableView) -> Int {
        return models.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models[section].count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: SettingScreenTableViewCell.identifier, for: indexPath) as? SettingScreenTableViewCell else { return UITableViewCell() }

        cell.settingCell = models[indexPath.section][indexPath.row]

        let typeOfAccsessory = models[indexPath.section][indexPath.row].cellType
        let switchButton = UISwitch(frame: CGRectZero) as UISwitch
        switchButton.isOn = false
        cell.accessoryType = .detailDisclosureButton
        switch typeOfAccsessory {
        case .switchButton:
            cell.accessoryView = switchButton
        case .disclosureIndicator:
            cell.accessoryType = .disclosureIndicator
        }

        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        40
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)

    }
}
