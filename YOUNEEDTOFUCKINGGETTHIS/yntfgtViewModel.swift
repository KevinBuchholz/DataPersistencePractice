//
//  yntfgtViewModel.swift
//  YOUNEEDTOFUCKINGGETTHIS
//
//  Created by Kevin Buchholz on 5/31/23.
//

import Foundation

        @MainActor class yntfgtViewModel : ObservableObject {
            
            @Published private(set) var score = 0
            
            func addPoint() {
                score += 1
            }
            
            func resetPoints() {
                score = 0
            }

}

//class Score: ObservableObject {
//    @Published private(set) var score = 0
//}

