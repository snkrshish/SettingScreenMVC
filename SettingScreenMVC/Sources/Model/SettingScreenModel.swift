import Foundation

final class SettingScreenModel {
    func createModel() -> [[SettingScreen]] {
        return [
            [],
            [SettingScreen(textCell: "Авиарежим", iconCell: "airplane", cellType: .switchButton),
             SettingScreen(textCell: "Wi-Fi", iconCell: "wifi", cellType: .disclosureIndicator, statusText: "Не подключен"),
             SettingScreen(textCell: "Bluetooth", iconCell: "bitcoinsign", cellType: .disclosureIndicator, statusText: "Вкл."),
             SettingScreen(textCell: "Сотовая связь", iconCell: "antenna.radiowaves.left.and.right", cellType: .disclosureIndicator),
             SettingScreen(textCell: "Режим Модема", iconCell: "personalhotspot", cellType: .disclosureIndicator),
             SettingScreen(textCell: "VPN", iconCell: "point.3.connected.trianglepath.dotted", cellType: .switchButton)],

            [SettingScreen(textCell: "Уведомления", iconCell: "bell.badge.fill", cellType: .disclosureIndicator),
             SettingScreen(textCell: "Звуки, тактильные сигналы", iconCell: "speaker.wave.3.fill", cellType: .disclosureIndicator),
             SettingScreen(textCell: "Фокусирование", iconCell: "moon.fill", cellType: .disclosureIndicator),
             SettingScreen(textCell: "Экранное время", iconCell: "hourglass", cellType: .disclosureIndicator)],
            
            [SettingScreen(textCell: "Основные", iconCell: "gear", cellType: .disclosureIndicator),
             SettingScreen(textCell: "Пункт управления", iconCell: "switch.2", cellType: .disclosureIndicator),
             SettingScreen(textCell: "Экран и яркость", iconCell: "textformat", cellType: .disclosureIndicator),
             SettingScreen(textCell: "Обои", iconCell: "circle.hexagongrid", cellType: .disclosureIndicator),
             SettingScreen(textCell: "Универсальный доступ", iconCell: "accessibility", cellType: .disclosureIndicator)]
        ]
    }
}
