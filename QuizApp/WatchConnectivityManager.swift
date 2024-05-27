//
//  WatchConnectivityManager.swift
//  QuizApp
//
//  Created by dit-user on 2024/05/22.
//

import SwiftUI
import WatchConnectivity

class WatchConnectivityManager: NSObject, ObservableObject {

    @Published var messageReceived: String = ""

    override init() {
        super.init()
        if WCSession.isSupported() {
            let session = WCSession.default
            session.delegate = self
            session.activate()
        }
    }
}

extension WatchConnectivityManager: WCSessionDelegate {

    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        if let error = error {
            print("Session activation failed with error: \(error.localizedDescription)")
            return
        }
        print("Session activated with state: \(activationState.rawValue)")
    }

    func session(_ session: WCSession, didReceiveMessage message: [String : Any]) {
        // Watch Appからメッセージを受信したときの処理
        if let action = message["action"] as? String, action == "buttonPressed" {
            DispatchQueue.main.async {
                self.messageReceived = "Button pressed on Watch App"
            }
        }
    }
}
