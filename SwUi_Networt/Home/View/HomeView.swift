//
//  HomeView.swift
//  SwUi_Networt
//
//  Created by Marcelo Sampaio on 19/05/22.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var viewModel: HomeViewModel
    
    // navigation helper
    @State var action: Int? = 0
    
    @State var results = [Result]()
    @State var trackId = Int()

    
    var body: some View {
        ZStack {
            NavigationView {
                List(results, id:\.id) {result in
                    
                    NavigationLink(destination: viewModel.detailView(result: result)) {
                        VStack(alignment: .leading, spacing: 8) {
                            if viewModel.uiState == HomeUIState.notified && result.trackId == 1441133644 {
                                Text("❤️ \(result.trackName)")
                                    .font(.headline)
                                    .padding(.top, 4)
                            }else{
                                Text("✅ \(result.trackName)")
                                    .font(.headline)
                                    .padding(.top, 4)
                            }

                            Text(result.collectionName)
                                .padding(.top, 4)
                        }
                    }
                }
                .task {
                        // we need aknowlodge that loadData() must sleep untill the job is finished
                        await loadData()
                    }
                .navigationBarTitleDisplayMode(.large)
                .navigationTitle("🎸 The Beatles Songs")
            }
        }
    }
    
    // tells swift this method might want to go to sleep in oprder to complete its work
    func loadData() async {
        // 📍 1- create the url
        let url = URL(string: "https://itunes.apple.com/search?term=The+Beatlest&entity=song")
    
        // 📍 2- fetch data
        do {
            let (data, _) = try await URLSession.shared.data(from: url!)
            // 📍 3- decode results
            if let decodedResponse = try? JSONDecoder().decode(Response.self, from: data) {
                results = decodedResponse.results
            }
            
        }catch {
            print("❌ loadData() invalid data")
            return
        }
        
        
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        return HomeView(viewModel: HomeViewModel())
    }
}
