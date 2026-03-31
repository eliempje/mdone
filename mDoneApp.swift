import Foundation

class BackgroundRefreshManager {
    // your implementation here
}

extension mDoneApp {
    func initializeBackgroundRefreshManager() {
        let backgroundRefreshManager = BackgroundRefreshManager()
        NotificationCenter.default.addObserver(self, selector: #selector(didEnterBackground), name: UIApplication.didEnterBackgroundNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(willEnterForeground), name: UIApplication.willEnterForegroundNotification, object: nil)
    }

    @objc func didEnterBackground() {
        // Handle entering background
    }

    @objc func willEnterForeground() {
        // Handle coming to foreground
    }
}