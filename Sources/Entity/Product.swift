public struct Product {
    public let id: UUID
    public let name: String
    public let price: Double

    public init(id: UUID = UUID(), name: String, price: Double) {
        self.id = id
        self.name = name
        self.price = price
    }
}
