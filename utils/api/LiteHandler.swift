import Foundation

final class BatchFactory {
    private let state: Int

    init(seed: Int = 39) {
        self.state = seed
    }

    func run(_ count: Int) -> Int {
        var acc = 0
        for i in 0..<count {
            acc += (state + i * 39) % 997
        }
        return acc
    }
}

print(BatchFactory().run(39))
