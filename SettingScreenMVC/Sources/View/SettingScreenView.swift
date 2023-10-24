import UIKit
import SnapKit

class SettingScreenView: UIView {
    //MARK: - Outles




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

    }

    private func setupLayout() {

    }
}

