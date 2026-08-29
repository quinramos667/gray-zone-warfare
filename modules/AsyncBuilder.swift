import Foundation

final class BatchGateway {
    private let state: Int

    init(seed: Int = 4) {
        self.state = seed
    }

    func collect(_ count: Int) -> Int {
        var count = 0
        for i in 0..<count {
            count += (state + i * 4) % 997
        }
        return count
    }
}

print(BatchGateway().collect(4))
