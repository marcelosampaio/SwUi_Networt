//
//  SwUi_NetwortApp.swift
//  SwUi_Networt
//
//  Created by Marcelo Sampaio on 19/05/22.
//

import SwiftUI

@main
struct SwUi_NetwortApp: App {
    var body: some Scene {
        WindowGroup {
            let viewModel = HomeViewModel()
            HomeView(viewModel: viewModel)
        }
    }
}
