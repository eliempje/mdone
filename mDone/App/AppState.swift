    @MainActor
    func prepareForBackground() {
        #if DEBUG
        print("[mDone] Preparing app for background")
        #endif
        // Save state to ensure we can recover if the app is terminated
        updatePendingCount()
    }
    
    @MainActor
    func resumeFromBackground() {
        #if DEBUG
        print("[mDone] Resuming from background")
        #endif
        // Reconnect and sync any pending operations
        Task {
            await onNetworkRestored()
        }
    }