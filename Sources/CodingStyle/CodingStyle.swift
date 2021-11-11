//
//  CodingStyle.swift
//  CodingStyle
//
//  Created by Aksilont on 10.11.2021.
//

@propertyWrapper
struct CodingStyle {
    enum Style: Character, CaseIterable {
        case camelCase = " "
        case snakeCase = "_"
        case kebabCase = "-"
    }
    
    private var value: String
    private var style: Style
    
    public var wrappedValue: String {
        get { formatString(value, with: style) }
        set { value = newValue }
    }
    
    public var projectedValue: Style {
        get { style }
        set { style = newValue }
    }
    
    init(wrappedValue: String, _ style: Style) {
        self.value = wrappedValue
        self.style = style
    }
    
    private func formatString(_ value: String, with style: Style) -> String {
        let formattedValue = value.map { $0.isUppercase ? " \($0)" : "\($0)" }.joined()
        let allCharacters = Style.allCases.map { $0.rawValue }
        let arr: [String] = formattedValue
            .split { allCharacters.contains($0) }
            .map { String($0).lowercased() }
        
        switch style {
        case .camelCase:
            return arr.map { $0.prefix(1).uppercased() + $0.dropFirst() }.joined()
        default:
            return arr.map { String($0) }.joined(separator: String(style.rawValue))
        }
    }
}
