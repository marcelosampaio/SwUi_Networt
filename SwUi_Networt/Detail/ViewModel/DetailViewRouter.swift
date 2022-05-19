//
//  DetailViewRouter.swift
//  SwUi_Networt
//
//  Created by Marcelo Sampaio on 19/05/22.
//

import SwiftUI

enum DetailViewRouter {
    
    static func makeHomeView() -> some View {
        let viewModel = HomeViewModel()
        return HomeView(viewModel: viewModel)
    }
    
    
}
