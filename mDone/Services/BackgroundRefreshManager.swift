import UIKit

class BackgroundRefreshManager {
    static let shared = BackgroundRefreshManager()

    private init() {}

    func startBackgroundTask(completion: @escaping () -> Void) {
        var backgroundTask: UIBackgroundTaskIdentifier = .invalid
        backgroundTask = UIApplication.shared.beginBackgroundTask(withName: "BackgroundRefresh") {
            // Clean up any remaining tasks before the time expires
            UIApplication.shared.endBackgroundTask(backgroundTask)
            backgroundTask = .invalid
        }

        // Perform your background task here
        DispatchQueue.global().async {
            // Simulate a network request or a time-consuming process
            sleep(5) // Simulating a delay for the task
            // Once the task is done, call the completion handler
            completion()
            UIApplication.shared.endBackgroundTask(backgroundTask)
            backgroundTask = .invalid
        }
    }
}