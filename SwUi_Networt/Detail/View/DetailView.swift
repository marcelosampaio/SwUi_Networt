//
//  DetailView.swift
//  SwUi_Networt
//
//  Created by Marcelo Sampaio on 19/05/22.
//

import SwiftUI

struct DetailView: View {
    
    @ObservedObject var viewModel: DetailViewModel
    
    var body: some View {
        Text("✅ Detail information will be available here!\n✅ Soon!!!!! 😊")
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = DetailViewModel()
        DetailView(viewModel: viewModel)
    }
}
