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
//    @Published var result = Result()
    
    init() {
        // sink - Bloco de código a ser executado após o callback
        cancellable = publisher.sink { result in
            print("👂👍 HOME VIEW MODEL - listerning. value: \(result)")
            
            self.uiState = .ok
            
            
//            if value {
//                // time to take action
//                self.uiState = .ok
//            }
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

extension HomeViewModel {
    func homeView() -> some View {
        return HomeViewRouter.makeHomeView(publisher: publisher)
    }
}
