//
//  yntfgtViewModel.swift
//  YOUNEEDTOFUCKINGGETTHIS
//
//  Created by Kevin Buchholz on 5/31/23.
//

import Foundation

        @MainActor class yntfgtViewModel : ObservableObject {
            
            let savePath = FileManager.documentsDirectory.appendingPathComponent("SavedScores")
            @Published private(set) var score : Int
            
            init() {
                do {
                    let data = try Data(contentsOf: savePath)
                    score = try JSONDecoder().decode(Int.self, from: data)
                } catch {
                    score = 0
                }
            }

                func save() {
                    do {
                        let data = try JSONEncoder().encode(score)
                        try data.write(to: savePath, options: [.atomic, .completeFileProtection])
                    } catch {
                        print("Unable to save data.")
                    }
                }
            
                
            
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

