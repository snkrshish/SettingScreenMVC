import Foundation

struct SettingScreen {

    var textCell: String
    var iconCell: String
    var cellType: TypeOfAccsessories
    var statusText: String = ""
}

enum TypeOfAccsessories {
    case disclosureIndicator
    case switchButton
}
