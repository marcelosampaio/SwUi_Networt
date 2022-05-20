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
        
        VStack {
            
            Image("theBeatles")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 221, alignment: .center)
            
            Text("🎸 \(viewModel.result.trackName)")
                .padding()
                .font(Font.headline.bold())
            
            Text("💿 \(viewModel.result.collectionName)")
                .padding()
                .font(Font.subheadline.bold())
            
            Spacer()
            
            Button("❤️ Like this song") {
                print("❤️ you liked this song")
                viewModel.likeSong()
            }
            .padding()
            .font(Font.callout.bold())
            
            
        }
        
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = DetailViewModel(result: Result())
        DetailView(viewModel: viewModel)
    }
}
