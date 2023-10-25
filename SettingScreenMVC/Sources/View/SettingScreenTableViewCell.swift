import UIKit
import SnapKit

class SettingScreenTableViewCell: UITableViewCell {

    static let identifier = "SettingScreenIdentifier"

    private var models: [[SettingScreen]] = []

    func configurateView(models: [[SettingScreen]]) {
        self.models = models
    }

    var settingCell: SettingScreen? {
        didSet {
            cellImage.image = UIImage(systemName: settingCell?.iconCell ?? "")
            cellImage.backgroundColor = changeColor
            cellName.text = settingCell?.textCell
            cellStatus.text = settingCell?.statusText
        }
    }


    
    //MARK: - Outlets
    private lazy var cellImage: UIImageView = {
        let cellImage = UIImageView()
        cellImage.clipsToBounds = true
        cellImage.tintColor = .white
        cellImage.contentMode = .center
        cellImage.layer.cornerRadius = 5
        return cellImage
    }()

    private lazy var cellName: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()

    private lazy var cellStatus: UILabel = {
        let status = UILabel()
        status.font = UIFont.systemFont(ofSize: 15)
        status.textColor = .systemGray
        return status
    }()
    //MARK: - Lifecycle
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupHierarchy()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    //MARK: - Setup
    private func setupHierarchy() {
        contentView.addSubview(cellImage)
        contentView.addSubview(cellName)
        contentView.addSubview(cellStatus)
    }

    private func setupLayout() {
        cellImage.snp.makeConstraints {
            $0.centerY.equalTo(contentView)
            $0.leading.equalTo(contentView).offset(20)
            $0.height.equalTo(contentView.snp.height).offset(-10)
            $0.width.equalTo(cellImage.snp.height)
        }

        cellName.snp.makeConstraints {
            $0.centerY.equalTo(contentView)
            $0.leading.equalTo(cellImage.snp.trailing).offset(10)
        }

        cellStatus.snp.makeConstraints {
            $0.centerY.equalTo(contentView)
            $0.trailing.equalTo(contentView).offset(-20)
        }

    }


    //MARK: - Reuse
    override func prepareForReuse() {
        super.prepareForReuse()
        self.accessoryView = nil
        self.settingCell = nil
    }


    //MARK: - configuration color

    private var  changeColor: UIColor {
        switch settingCell?.textCell {

        case "Авиарежим":
            return .systemOrange
        case "Wi-Fi", "Bluetooth", "VPN", "Экран и яркость", "Универсальный доступ":
            return .systemBlue
        case "Сотовая связь", "Режим Модема":
            return .systemGreen
        case "Звуки, тактильные сигналы":
            return .systemPink
        case "Уведомления":
            return .systemRed
        case "Фокусирование", "Экранное время":
            return .systemIndigo
        case "Основные", "Пункт управления":
            return .lightGray
        case "Обои":
            return .systemCyan
        case "Siri & Search":
            return .red
        default:
            return .black
        }
    }
}

