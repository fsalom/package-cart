import Foundation
public class Cart {
    private var items: [Product] = []

    public init() {}

    public func addProduct(_ product: Product) {
        items.append(product)
    }

    public func removeProduct(by id: UUID) {
        items.removeAll { $0.id == id }
    }

    public func totalCost() -> Double {
        return items.reduce(0) { $0 + $1.price }
    }

    public func listProducts() -> [Product] {
        return items
    }

    public func clearCart() {
        items.removeAll()
    }
}
