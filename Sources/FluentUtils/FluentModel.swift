import FluentKit

public protocol FluentModel: Model {
    associatedtype FieldKeys: FluentFieldKeys
}

public protocol FluentFieldKeys: RawRepresentable where RawValue == String {}

public extension FluentFieldKeys {
    var key: FieldKey {
        FieldKey(stringLiteral: rawValue)
    }
}

public extension FieldProperty where Model: FluentModel {
    convenience init(key: Model.FieldKeys) {
        self.init(key: key.key)
    }
}
public extension OptionalFieldProperty where Model: FluentModel {
    convenience init(key: Model.FieldKeys) {
        self.init(key: key.key)
    }
}
public extension EnumProperty where Model: FluentModel {
    convenience init(key: Model.FieldKeys) {
        self.init(key: key.key)
    }
}
public extension ParentProperty where Model: FluentModel {
    convenience init(key: Model.FieldKeys) {
        self.init(key: key.key)
    }
}
public extension OptionalParentProperty where Model: FluentModel {
    convenience init(key: Model.FieldKeys) {
        self.init(key: key.key)
    }
}
