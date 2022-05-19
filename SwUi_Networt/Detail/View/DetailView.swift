//
//  DetailView.swift
//  SwUi_Networt
//
//  Created by Marcelo Sampaio on 19/05/22.
//

import SwiftUI

struct DetailView: View {
    @ObservedObject var viewModel: DetailViewModel
    
    
    // navigation helper
    @State var action: Int? = 0
    
    var body: some View {
        Button("❤️ Like this song") {
            print("❤️ you liked this song")
            viewModel.likeSong()
            
        }
//        Text("✅ Detail information will be available here!\n✅ Soon!!!!! 😊")
        
//        ZStack {
//            NavigationLink(destination: viewModel.homeView(), tag: 0, selection: $action) {
//                EmptyView()
//                Text("Tap me to return with an action")
//                Spacer()
//            }
//        }
    }
}


struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = DetailViewModel()
        DetailView(viewModel: viewModel)
    }
}
