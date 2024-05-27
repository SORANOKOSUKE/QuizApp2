//
//  ContentView.swift
//  QuizWatchApp Watch App
//
//  Created by dit-user on 2024/05/20.
//

import SwiftUI

struct ContentView: View {

    @ObservedObject private var viewModel =  WatchViewModel()

    var body: some View {
        VStack {
            HStack {
                Button("1") {
                    viewModel.Answer(answer: 1)
                }
                .font(.system(size: 24))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)

                Button("2") {
                    viewModel.Answer(answer: 2)
                }
                .font(.system(size: 24))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(8)
            }
            .frame(maxHeight: .infinity)

            HStack {
                Button("3") {
                    viewModel.Answer(answer: 3)
                }
                .font(.system(size: 24))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.orange)
                .foregroundColor(.white)
                .cornerRadius(8)

                Button("4") {
                    viewModel.Answer(answer: 4)
                }
                .font(.system(size: 24))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.red)
                .foregroundColor(.white)
                .cornerRadius(8)
            }
            .frame(maxHeight: .infinity)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
