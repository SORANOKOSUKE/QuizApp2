//
//  ContentView.swift
//  QuizApp
//
//  Created by dit-user on 2024/05/20.
//

import SwiftUI

struct ContentView: View {

    @ObservedObject private var viewModel =  PhoneContentViewModel()
    @State private var counterText: String = ""

    var body: some View {
        ZStack {
            VStack {
                Text(String(viewModel.quizText))
                    .font(.system(size: 36.0))
                    .bold()
                    .padding()

                VStack(alignment: .leading, spacing: 10){
                    Text(String("1." + viewModel.select1))
                        .font(.system(size: 24.0))
                        .bold()
                        .foregroundColor(.blue) // 青色

                    Text(String("2." + viewModel.select2))
                        .font(.system(size: 24.0))
                        .bold()
                        .foregroundColor(.green) // 緑色

                    Text(String("3." + viewModel.select3))
                        .font(.system(size: 24.0))
                        .bold()
                        .foregroundColor(.orange) // オレンジ色

                    Text(String("4." + viewModel.select4))
                        .font(.system(size: 24.0))
                        .bold()
                        .foregroundColor(.red) // 赤色

                }
            }
            .padding()

            if viewModel.showResult {
                Text(viewModel.resultMessage)
                    .font(.system(size: 186.0))
                    .foregroundColor(viewModel.resultColor)
                    .padding()
                    .shadow(radius: 10)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
