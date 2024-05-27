//
//  phoneContentViewModel.swift
//  QuizApp
//
//  Created by dit-user on 2024/05/22.
//

import Foundation
import WatchConnectivity
import SwiftUI

class PhoneContentViewModel: NSObject, ObservableObject {

    private let session: WCSession
    private var sessionDelegate: PhoneContentSessionDelegate?
    var quizText : String = "問題"
    @Published var select1: String = "選択肢1"
    @Published var select2: String = "選択肢2"
    @Published var select3: String = "選択肢3"
    @Published var select4: String = "選択肢4"

    @Published var counter :Int = 0
    private var currentQuiz: Quiz?

    @Published var resultMessage: String = ""
    @Published var resultColor: Color = .clear
    @Published var showResult: Bool = false

    override init() {
        self.session = WCSession.default
        super.init()
        self.setupSession()

        loadQuiz()
    }

    private func setupSession() {
        self.sessionDelegate = PhoneContentSessionDelegate(viewModel: self)
        self.session.delegate = sessionDelegate
        self.session.activate()
    }



    func loadQuiz() {

        // QuizManagerからクイズデータを取得して設定する
        QuizManager.shared.loadQuizData()

        if let quiz = QuizManager.shared.quizData.randomElement() {
            self.currentQuiz = quiz
            self.quizText = quiz.question
            self.select1 = quiz.option1
            self.select2 = quiz.option2
            self.select3 = quiz.option3
            self.select4 = quiz.option4
            print("quiz.correctAnswerIndex\(quiz.correctAnswerIndex+1)")
        }
    }

    func hantei(selectedOptionIndex: Int) {
        guard let quiz = currentQuiz else {
                    return
                }
                if selectedOptionIndex == quiz.correctAnswerIndex {
                    resultMessage = "◯"
                    resultColor = .red
                } else {
                    resultMessage = "×"
                    resultColor = .blue
                }
                showResult = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.showResult = false
        }
    }


    func send(count: Int) {
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
