import FluentKit

public protocol FluentFieldKeys: RawRepresentable where RawValue == String {}

public extension FluentFieldKeys {
    var key: FieldKey {
        FieldKey(stringLiteral: rawValue)
    }
}
