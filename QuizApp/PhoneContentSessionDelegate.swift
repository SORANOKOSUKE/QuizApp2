//
//  PhoneContentSessionDelegate.swift
//  QuizApp
//
//  Created by dit-user on 2024/05/22.
//

import Foundation
import WatchConnectivity

class PhoneContentSessionDelegate: NSObject, WCSessionDelegate {

    private let viewModel: PhoneContentViewModel

    init(viewModel: PhoneContentViewModel) {
        self.viewModel = viewModel
        super.init()
    }

    func sessionDidBecomeInactive(_ session: WCSession) {
        // セッションが非アクティブになったときの処理
    }

    func sessionDidDeactivate(_ session: WCSession) {
        // セッションが非アクティブになったときの処理
        session.activate()
    }

    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        // セッションのアクティベーションが完了したときの処理
        if let error = error {
            print("アクティベーションに失敗しました。エラー: \(error.localizedDescription)")
        } else {
            print("アクティベーションが完了しました。状態: \(activationState.rawValue)")
        }
    }

    func session(_ session: WCSession, didReceiveMessage message: [String: Any]) {
        // Apple Watchからメッセージを受け取ったときの処理
        DispatchQueue.main.async {
            if let count = message["count"] as? Int {
                self.viewModel.counter = count
                print("selectedOptionIndex: count-1\(count-1)")
                self.viewModel.hantei(selectedOptionIndex: count-1)
                self.viewModel.loadQuiz()
                
            }
        }
    }
}
