//
//  DetailViewModel.swift
//  SwUi_Networt
//
//  Created by Marcelo Sampaio on 19/05/22.
//

import SwiftUI
import Combine

class DetailViewModel: ObservableObject {
    
    private var cancelleable: AnyCancellable?
    var publisher: PassthroughSubject<Result, Never>!
    
    var result: Result!
    
    @Published var uiState: DetailUIState = .loaded
    
    init(result: Result) {
        self.result = result
    }
    
}

extension DetailViewModel {
    func likeSong() {
        print("❤️ (DetailViewModel) - liked a song: \(result.trackName) ")
        
        DispatchQueue.main.asyncAfter(deadline: .now()) {
            self.uiState = .goToHomeScreen
            self.publisher.send(self.result)
        }
        
    }
}

