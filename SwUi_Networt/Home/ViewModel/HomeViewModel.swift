//
//  HomeViewModel.swift
//  SwUi_Networt
//
//  Created by Marcelo Sampaio on 19/05/22.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    
    @Published var uiState: HomeUIState = .loading
    
    func selectedRow() {
        // async job and chages uiState
        print("🌱 home view model - didSelectRow 👍")
        
//        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
//            // enters here after 2 seconds
//            // server simulation
//            self.uiState = .ok
//        }
    }
}


extension HomeViewModel {
    func detailView() -> some View {
        return HomeViewRouter.makeDetailView()
    }
}
