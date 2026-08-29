import Foundation

final class BatchHandler {
    private let state: Int

    init(seed: Int = 33) {
        self.state = seed
    }

    func flush(_ count: Int) -> Int {
        var result = 0
        for i in 0..<count {
            result += (state + i * 33) % 997
        }
        return result
    }
}

print(BatchHandler().flush(33))
