//
//  QuizManager.swift
//  QuizApp
//
//  Created by dit-user on 2024/05/27.
//

import Foundation

class QuizManager {
    static let shared = QuizManager()

    private init() {}

    var quizData: [Quiz] = []

    func loadQuizData() {
        // ダミーデータの例（実際のデータの読み込み方法に応じて変更してください）
        quizData = [
            Quiz(
                question: "AIの分野で最も広く使用されている言語は？",
                option1: "Python",
                option2: "Java",
                option3: "C++",
                option4: "JavaScript",
                correctAnswerIndex: 0
            ),
            Quiz(
                question: "機械学習モデルの学習において、未知のデータに対するモデルの汎化能力を評価するために用いられる手法は？",
                option1: "学習率",
                option2: "パフォーマンス指標",
                option3: "検証データ",
                option4: "テストデータ",
                correctAnswerIndex: 3
            ),
            Quiz(
                question: "深層学習において、画像認識で有名なニューラルネットワークのアーキテクチャは？",
                option1: "VGG",
                option2: "AlexNet",
                option3: "ResNet",
                option4: "LeNet",
                correctAnswerIndex: 1
            ),
            Quiz(
                question: "教師あり学習において、クラス分類問題で各クラスの確率を出力する活性化関数は？",
                option1: "ReLU",
                option2: "シグモイド関数",
                option3: "tanh関数",
                option4: "ソフトマックス関数",
                correctAnswerIndex: 3
            ),
            Quiz(
                question: "強化学習において、環境から得た情報を基に行動を決定する部分を何と呼ぶ？",
                option1: "報酬",
                option2: "エージェント",
                option3: "方策",
                option4: "価値関数",
                correctAnswerIndex: 2
            ),
            Quiz(
                question: "自然言語処理（NLP）のタスクで、単語の基本形に変換する処理は？",
                option1: "トークン化",
                option2: "ステミング",
                option3: "レマタイズ",
                option4: "クレンジング",
                correctAnswerIndex: 2
            ),
            Quiz(
                question: "AIのモデルの学習過程で、予測結果と正解との誤差を最小化するように重みを調整する手法は？",
                option1: "クロスエントロピー",
                option2: "勾配ブースティング",
                option3: "バックプロパゲーション",
                option4: "ベイズ最適化",
                correctAnswerIndex: 2
            ),
            Quiz(
                question: "GAN（生成対抗ネットワーク）の枠組みで、生成ネットワークと識別ネットワークが互いに競い合う部分を何と呼ぶ？",
                option1: "ディスクリミネータ",
                option2: "ジェネレータ",
                option3: "デコーダ",
                option4: "エンコーダ",
                correctAnswerIndex: 0
            ),
            Quiz(
                question: "AIの倫理的な問題の中で、アルゴリズムが意図しない結果を出すことを指す用語は？",
                option1: "データバイアス",
                option2: "ブラックボックス問題",
                option3: "過学習",
                option4: "アルゴリズムの透明性",
                correctAnswerIndex: 1
            ),
            Quiz(
                question: "画像認識において、画像の特徴を抽出するために利用される一般的な手法は？",
                option1: "PCA",
                option2: "CNN",
                option3: "RNN",
                option4: "K-means",
                correctAnswerIndex: 1
            ),
            Quiz(
                question: "AIの分野で最も広く使用されている言語は？",
                option1: "Python",
                option2: "Java",
                option3: "C++",
                option4: "JavaScript",
                correctAnswerIndex: 0
            ),
            Quiz(
                question: "機械学習モデルの学習において、未知のデータに対するモデルの汎化能力を評価するために用いられる手法は？",
                option1: "学習率",
                option2: "パフォーマンス指標",
                option3: "検証データ",
                option4: "テストデータ",
                correctAnswerIndex: 3
            ),
            Quiz(
                question: "深層学習において、画像認識で有名なニューラルネットワークのアーキテクチャは？",
                option1: "VGG",
                option2: "AlexNet",
                option3: "ResNet",
                option4: "LeNet",
                correctAnswerIndex: 1
            ),
            Quiz(
                question: "教師あり学習において、クラス分類問題で各クラスの確率を出力する活性化関数は？",
                option1: "ReLU",
                option2: "シグモイド関数",
                option3: "tanh関数",
                option4: "ソフトマックス関数",
                correctAnswerIndex: 3
            ),
            Quiz(
                question: "強化学習において、環境から得た情報を基に行動を決定する部分を何と呼ぶ？",
                option1: "報酬",
                option2: "エージェント",
                option3: "方策",
                option4: "価値関数",
                correctAnswerIndex: 2
            ),
            Quiz(
                question: "自然言語処理（NLP）のタスクで、単語の基本形に変換する処理は？",
                option1: "トークン化",
                option2: "ステミング",
                option3: "レマタイズ",
                option4: "クレンジング",
                correctAnswerIndex: 2
            ),
            Quiz(
                question: "AIのモデルの学習過程で、予測結果と正解との誤差を最小化するように重みを調整する手法は？",
                option1: "クロスエントロピー",
                option2: "勾配ブースティング",
                option3: "バックプロパゲーション",
                option4: "ベイズ最適化",
                correctAnswerIndex: 2
            ),
            Quiz(
                question: "GAN（生成対抗ネットワーク）の枠組みで、生成ネットワークと識別ネットワークが互いに競い合う部分を何と呼ぶ？",
                option1: "ディスクリミネータ",
                option2: "ジェネレータ",
                option3: "デコーダ",
                option4: "エンコーダ",
                correctAnswerIndex: 0
            ),
            Quiz(
                question: "AIの倫理的な問題の中で、アルゴリズムが意図しない結果を出すことを指す用語は？",
                option1: "データバイアス",
                option2: "ブラックボックス問題",
                option3: "過学習",
                option4: "アルゴリズムの透明性",
                correctAnswerIndex: 1
            ),
            Quiz(
                question: "画像認識において、画像の特徴を抽出するために利用される一般的な手法は？",
                option1: "PCA",
                option2: "CNN",
                option3: "RNN",
                option4: "K-means",
                correctAnswerIndex: 1
            )
        ]
    }
}
