//
//  HomeViewRouter.swift
//  SwUi_Networt
//
//  Created by Marcelo Sampaio on 19/05/22.
//

import SwiftUI
import Combine

enum HomeViewRouter {
    
    static func makeDetailView(publisher: PassthroughSubject<Result, Never>, result: Result) -> some View {
        let viewModel = DetailViewModel(result: result)
        viewModel.publisher = publisher
        return DetailView(viewModel: viewModel)
    }
    
}
