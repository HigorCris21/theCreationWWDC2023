

//  the creation
//
//  Created by Higor  Lo Castro on 10/04/23.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            SplashScreenView()
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .navigationBarHidden(true)
    }
}

