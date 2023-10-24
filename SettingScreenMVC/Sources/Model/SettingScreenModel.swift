import Foundation

final class SettingScreenModel {
    static var cell: [[SettingScreen]] = [
         [SettingScreen(textCell: "Авиарежим", iconCell: "airplane", cellType: .switchButton),
          SettingScreen(textCell: "Wi-Fi", iconCell: "wifi", cellType: .disclosureIndicator, statusText: "Не подключен"),
          SettingScreen(textCell: "Bluetooth", iconCell: "bluetooth", cellType: .disclosureIndicator, statusText: "Вкл."),
          SettingScreen(textCell: "Сотовая связь", iconCell: "antenna.radiowaves.left.and.right", cellType: .disclosureIndicator),
          SettingScreen(textCell: "Режим Модема", iconCell: "personalhotspot", cellType: .disclosureIndicator),
          SettingScreen(textCell: "VPN", iconCell: "point.3.connected.trianglepath.dotted", cellType: .switchButton)],

         [SettingScreen(textCell: "Уведомления", iconCell: "bell.badge.fill", cellType: .disclosureIndicator),
          SettingScreen(textCell: "Звуки, тактильные сигналы", iconCell: "speaker.wave.3.fill", cellType: .disclosureIndicator),
          SettingScreen(textCell: "Фокусирование", iconCell: "moon.fill", cellType: .disclosureIndicator),
          SettingScreen(textCell: "Экранное вреия", iconCell: "hourglass", cellType: .disclosureIndicator)],

         [SettingScreen(textCell: "Основные", iconCell: "gear", cellType: .disclosureIndicator),
          SettingScreen(textCell: "Пункт управления", iconCell: "switch.2", cellType: .disclosureIndicator),
          SettingScreen(textCell: "Обои", iconCell: "aqi.medium", cellType: .disclosureIndicator),
          SettingScreen(textCell: "Siri", iconCell: "siri", cellType: .disclosureIndicator)]
     ]
}
