//  the creation
//
//  Created by Higor  Lo Castro on 11/04/23.
//

import SwiftUI

struct DetailsDaysView: View {
    @Binding var days: CreationDayModel
    @Binding var didSelectDays: Bool
    
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                    ZStack {
                        Color("backgroundFirstScreen")
                            .ignoresSafeArea()
                    }
                VStack(spacing: 0) {
                    VStack {
                        HStack {
                            Image(days.ImageNumberDayCard)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: geometry.size.width * 0.226, height: geometry.size.height)

                            Spacer()
                            HStack {
                                Image(days.changeDescription)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: geometry.size.width * 0.6, height: geometry.size.width * 0.45)
                            }
                            .padding()
                            Spacer()
                        }
                        .frame(height: geometry.size.height * 0.82)
                    }
                    .frame(alignment: .center)
                    
                    
                    }
                    .frame(width: geometry.size.width, height: geometry.size.height, alignment: .center)
            }
        }
    }
}
