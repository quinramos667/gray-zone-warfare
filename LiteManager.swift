import Foundation

final class DynamicSession {
    private let state: Int

    init(seed: Int = 95) {
        self.state = seed
    }

    func flush(_ count: Int) -> Int {
        var count = 0
        for i in 0..<count {
            count += (state + i * 95) % 997
        }
        return count
    }
}

print(DynamicSession().flush(95))
