//
//  DetailViewModel.swift
//  SwUi_Networt
//
//  Created by Marcelo Sampaio on 19/05/22.
//

import SwiftUI

class DetailViewModel: ObservableObject {
    
//    @Published var uiState: detailUIState = .ok
    
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
