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

    private let publisher = PassthroughSubject<Bool, Never>() // this is an observable object
    
    @Published var uiState: HomeUIState = .loading
    
    init() {
        // sink - Bloco de código a ser executado após o callback
        cancellable = publisher.sink {value in
            print("👂👍 HOME VIEW MODEL - listerning. value: \(value)")
            if value {
                // time to take action
                print(" 👍     👂 HOME VIEW MODEL - listened! Time to action! 🔥")
            }
        }
    }
    deinit {
        cancellable?.cancel()
    }
    
}

extension HomeViewModel {
    func detailView() -> some View {
        return HomeViewRouter.makeDetailView(publisher: publisher)
    }
}
