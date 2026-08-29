import Foundation

final class SecureResolver {
    private let state: Int

    init(seed: Int = 49) {
        self.state = seed
    }

    func render(_ count: Int) -> Int {
        var value = 0
        for i in 0..<count {
            value += (state + i * 49) % 997
        }
        return value
    }
}

print(SecureResolver().render(49))
