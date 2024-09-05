// ------------------------------------------------------
// Project: ToDoList
// File: DetailView.swift
// Created by Mark McBride on 2024.09.05
// Last Updated:  2024.09.05
// GitHub: https://github.com/memcbride
// ------------------------------------------------------
// Copyright © 2024 by MacModeler.  All rights reserved.


import SwiftUI

struct DetailView: View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        VStack {
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            Text("You Are a Swifty Legend!")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            Spacer()
            Button("Get Back!") {
                dismiss()
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    DetailView()
}
