//
//  HomeViewModel.swift
//  SwUi_Networt
//
//  Created by Marcelo Sampaio on 19/05/22.
//

import SwiftUI
import Combine

class HomeViewModel: ObservableObject {
    
    private var cancellable : AnyCancellable?

    private let publisher = PassthroughSubject<Result, Never>() // this is an observable object
    
    @Published var uiState: HomeUIState = .loading
    @Published var trackIdState = Int()
    
    init() {
        // sink - Bloco de código a ser executado após o callback
        cancellable = publisher.sink { result in
            print("👂👍 HOME VIEW MODEL - listerning. value: \(result)")
            self.trackIdState = result.trackId
            self.uiState = .notified
        }
    }
    deinit {
        cancellable?.cancel()
    }
    
}

extension HomeViewModel {
    func detailView(result: Result) -> some View {
        return HomeViewRouter.makeDetailView(publisher: publisher, result: result)
    }
}
