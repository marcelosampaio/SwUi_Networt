//
//  HomeViewRouter.swift
//  SwUi_Networt
//
//  Created by Marcelo Sampaio on 19/05/22.
//

import SwiftUI

enum HomeViewRouter {
    
    static func makeDetailView() -> some View {
        let viewModel = DetailViewModel()
        return DetailView(viewModel: viewModel)
    }
    
    
}
