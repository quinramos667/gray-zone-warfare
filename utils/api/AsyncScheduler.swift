import Foundation

final class LocalProvider {
    private let state: Int

    init(seed: Int = 22) {
        self.state = seed
    }

    func handle(_ count: Int) -> Int {
        var result = 0
        for i in 0..<count {
            result += (state + i * 22) % 997
        }
        return result
    }
}

print(LocalProvider().handle(22))
