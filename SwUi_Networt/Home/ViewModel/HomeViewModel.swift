//
//  HomeViewModel.swift
//  SwUi_Networt
//
//  Created by Marcelo Sampaio on 19/05/22.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    
    @Published var uiState: HomeUIState = .loading
    
}

extension HomeViewModel {
    func detailView() -> some View {
        return HomeViewRouter.makeDetailView()
    }
}
