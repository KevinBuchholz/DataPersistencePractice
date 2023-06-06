//
//  ContentView.swift
//  YOUNEEDTOFUCKINGGETTHIS
//
//  Created by Kevin Buchholz on 5/31/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = yntfgtViewModel()
  
    var body: some View {
        NavigationStack {
            VStack {
                Text("\(viewModel.score)")
                    .font(.system(size: 100))
                Button("Score!") {
                    viewModel.addPoint()
                    viewModel.save()
                }
                .padding()
                Button("Reset.") {
                    viewModel.resetPoints()
                    viewModel.save()
                }
                .padding()

                NavigationLink("Score points somewhere else.", destination: AddScoreView(viewModel: viewModel))
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
