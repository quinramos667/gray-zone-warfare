import Foundation

final class LiteProcessor {
    private let state: Int

    init(seed: Int = 6) {
        self.state = seed
    }

    func load(_ count: Int) -> Int {
        var acc = 0
        for i in 0..<count {
            acc += (state + i * 6) % 997
        }
        return acc
    }
}

print(LiteProcessor().load(6))
