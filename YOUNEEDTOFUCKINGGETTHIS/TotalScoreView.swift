//
//  TotalScoreView.swift
//  YOUNEEDTOFUCKINGGETTHIS
//
//  Created by Kevin Buchholz on 5/31/23.
//

import SwiftUI

struct TotalScoreView: View {
    @ObservedObject var viewModel : yntfgtViewModel
    
    var body: some View {
        NavigationStack {
            Text("\(viewModel.score)")
                .font(.system(size: 100))        }
    }
}

struct TotalScoreView_Previews: PreviewProvider {
    static var previews: some View {
        TotalScoreView(viewModel: yntfgtViewModel())
    }
}
