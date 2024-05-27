//
//  ContentViewData.swift
//  QuizApp
//
//  Created by dit-user on 2024/05/20.
//

class ContentViewData: ObservableObject {
    @Published var someData: String = ""

    init() {
        // 初期化処理
        someData = "Hell World"
    }
    // その他のプロパティやメソッド
}
