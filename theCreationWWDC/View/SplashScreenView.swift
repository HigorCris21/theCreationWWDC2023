
//  the creation
//
//  Created by Higor  Lo Castro on 10/04/23.
//

import SwiftUI

struct SplashScreenView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                Color("backgroundStart")
                    .ignoresSafeArea()
                
                VStack(alignment: .center) {
                    
                    Image("logo_Character")
                        .resizable()
                        .scaledToFit()
                        .frame(width: geometry.size.width * 0.3, height: geometry.size.width * 0.3)
                
                    NavigationLink(destination:  OpeningView()) {
                        Image("startButton")
                            .resizable()
                            .scaledToFill()
                            .frame(width: geometry.size.width * 0.25, height: geometry.size.width * 0.055)
                    }
                }
                .frame(width: geometry.size.width, height: geometry.size.height, alignment: .center)
            }
        }
        .navigationBarHidden(true)
    }
}
