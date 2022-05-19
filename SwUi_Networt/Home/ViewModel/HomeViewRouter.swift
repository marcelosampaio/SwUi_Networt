//
//  HomeViewRouter.swift
//  SwUi_Networt
//
//  Created by Marcelo Sampaio on 19/05/22.
//

import SwiftUI
import Combine

enum HomeViewRouter {
    
    static func makeDetailView(publisher: PassthroughSubject<Bool, Never>) -> some View {
        let viewModel = DetailViewModel()
        viewModel.publisher = publisher
        return DetailView(viewModel: viewModel)
    }
    
    
}
