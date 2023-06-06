//
//  AddScoreView.swift
//  YOUNEEDTOFUCKINGGETTHIS
//
//  Created by Kevin Buchholz on 5/31/23.
//

import SwiftUI

struct AddScoreView: View {
    @ObservedObject var viewModel : yntfgtViewModel

    var body: some View {
        NavigationStack {
            VStack {
                Text("\(viewModel.score)")
                    .font(.system(size: 100))
                
                Button("Score!") {
                    viewModel.addPoint()
                }
                .padding()
            }
            
            NavigationLink("View Score", destination: TotalScoreView(viewModel: viewModel))
            
        }
    }
}

struct AddScoreView_Previews: PreviewProvider {
    static var previews: some View {
        AddScoreView(viewModel: yntfgtViewModel())
    }
}
