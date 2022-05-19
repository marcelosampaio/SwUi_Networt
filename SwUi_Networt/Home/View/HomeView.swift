//
//  HomeView.swift
//  SwUi_Networt
//
//  Created by Marcelo Sampaio on 19/05/22.
//

import SwiftUI


struct HomeView: View {
    
    @State private var results = [Result]()
    
    var body: some View {
        List(results, id:\.trackId) {item in
            VStack(alignment: .leading, spacing: 8) {
                Text(item.trackName)
                    .font(.headline)
                Text(item.collectionName)
            }
        }
        .task {
            // we need aknowlodge that loadData() must sleep untill the job is finished
            await loadData()
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
            print("❌ invalid data")
            return
        }
        
        
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        return HomeView()
    }
}
