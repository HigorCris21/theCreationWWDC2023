//  the creation
//
//  Created by Higor  Lo Castro on 18/04/23.
//

import SwiftUI

struct FinishView: View {
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Color("backgroundStart")
                    .ignoresSafeArea()
                
                VStack(alignment: .center, spacing: 10) {
                    Image("finishText")
                        .resizable()
                        .scaledToFill()
                        .frame(width: geometry.size.width * 0.5, height: geometry.size.width * 0.5)
                    
                    VStack { NavigationLink(destination: MainView()) {
                        Image("start_Over")
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
