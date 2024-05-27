//
//  WatchViewModel.swift
//  QuizWatchApp Watch App
//
//  Created by dit-user on 2024/05/20.
//

import Foundation
import WatchConnectivity

final class WatchViewModel: NSObject, ObservableObject {

    private let session: WCSession

    @Published var counter = 0

    init(session: WCSession = .default) {
        self.session = session
        super.init()
        self.session.delegate = self
        self.session.activate()
    }

    func countup() {
        counter += 1
        sendImmediately(count: counter)
    }

    func countdown() {
        counter -= 1
        sendImmediately(count: counter)
    }

    func Answer(answer : Int) {
        sendImmediately(count: answer)
    }


    func sendImmediately(count: Int) {
        guard session.activationState == .activated else {
            print("セッションがアクティブではないため、送信メソッドを呼び出すことはできません。")
            return
        }

        let message = ["count": count]
        session.sendMessage(message, replyHandler: nil) { error in
            print("メッセージの送信に失敗しました: \(error.localizedDescription)")
        }
    }




}

extension WatchViewModel: WCSessionDelegate {

    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        if let error = error {
            print("セッションのアクティベーションに失敗しました: \(error.localizedDescription)")
        } else {
            print("セッションがアクティベーションされました。状態: \(activationState.rawValue)")
        }
    }

    func session(_ session: WCSession, didReceiveMessage message: [String : Any]) {
        DispatchQueue.main.async {
            if let count = message["count"] as? Int {
                self.counter = count
            }
        }
    }
}
