
//  the creation
//
//  Created by Higor  Lo Castro on 10/04/23.
//

import Foundation
import SwiftUI

struct OpeningView: View {
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Color("backgroundStart")
                    .ignoresSafeArea()
                
                VStack(alignment: .center, spacing: 10) {
                    Image("textStart")
                        .resizable()
                        .scaledToFill()
                        .frame(width: geometry.size.width * 0.5, height: geometry.size.width * 0.5)
                    
                    VStack { NavigationLink(destination: MainView()) {
                        Image("letsGoButton")
                            .resizable()
                            .scaledToFill()
                            .frame(width: geometry.size.width * 0.25, height: geometry.size.width * 0.055)
                       }
                    }
                }
            }
            .navigationBarHidden(true)
        }
    }
}

