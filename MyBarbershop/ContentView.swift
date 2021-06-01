//
//  ContentView.swift
//  MyBarbershop
//
//  Created by ZISACHMAD on 10/05/21.
//

import SwiftUI
import StreamChat

struct ContentView: View {
    
    @StateObject var streamData = StreamViewModel()
    @AppStorage("log_Status") var logStatus = false
    
    
    @Binding var selectedTab : String
    
    var body: some View {
        LandingPage()
//        NavigationView {
//            if !logStatus {
//                Login()
//                    .navigationTitle("Login")
//            }
//            else {
//                ChannelView()
//            }
//        }
//        .alert(isPresented: $streamData.error, content: {
//            Alert(title: Text(streamData.errorMsg))
//        })
//        .overlay(
//            ZStack {
//                if streamData.createNewChannel {CreateNewChannel()} // NEW CHAT VIEW
//                if streamData.isLoading {LoadingScreen()} // LOADING SCREEN
//            }
//        )
//        .environmentObject(streamData)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LandingPage()
    }
}
