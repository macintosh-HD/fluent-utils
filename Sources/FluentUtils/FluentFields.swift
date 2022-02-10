import FluentKit

public protocol FluentFields: Fields {
    associatedtype FieldKeys: FluentFieldKeys
}

public extension FieldProperty where Model: FluentFields {
    convenience init(key: Model.FieldKeys) {
        self.init(key: key.key)
    }
}
public extension OptionalFieldProperty where Model: FluentFields {
    convenience init(key: Model.FieldKeys) {
        self.init(key: key.key)
    }
}
