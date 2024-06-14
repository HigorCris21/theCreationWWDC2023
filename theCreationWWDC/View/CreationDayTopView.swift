//  the creation
//
//  Created by Higor  Lo Castro on 11/04/23.
//

import SwiftUI

struct CreationDayTopView: View {
    var day: CreationDayModel
    var width: CGFloat
    
    var body: some View {
        GeometryReader { geometry in
            VStack (spacing: 10) {
                Spacer()
                    .frame(height: 20)

                Image(day.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: width * 0.1)

                Text(day.textName)
                    .font(.system(.footnote, design: .rounded))
                    .foregroundColor(.white)
                    .bold()
                    .multilineTextAlignment(.center)
            }
        }
    }
}

struct CreationDayBottomView: View {
    var dayBottom: CreationDayModel
    var width: CGFloat
    
    var body: some View {
        GeometryReader { geometry in
            VStack (spacing: 10) {
                Spacer()
                    .frame(height: 20)
                

                Image(dayBottom.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: width * 0.1)

                
                Text(dayBottom.textName)
                    .font(.system(.footnote, design: .rounded))
                    .foregroundColor(.white)
                    .bold()
                    .multilineTextAlignment(.center)
            }
        }
    }
}
