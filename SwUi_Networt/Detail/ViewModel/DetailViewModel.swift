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
    var publisher: PassthroughSubject<Bool, Never>!
    
    @Published var uiState: DetailUIState = .ok
    
}

extension DetailViewModel {
    func likeSong() {
        print("❤️ (DetailViewModel) - liked a song")
        
        DispatchQueue.main.asyncAfter(deadline: .now()) {
            self.publisher.send(true)
        }

    }
}
extension DetailViewModel {
    func homeView() -> some View {
        return DetailViewRouter.makeHomeView()
    }
}
