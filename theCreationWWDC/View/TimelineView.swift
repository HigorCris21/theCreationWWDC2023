//  the creation
//
//  Created by Higor  Lo Castro on 11/04/23.
//

import SwiftUI
struct TimelineView: View {
    
    @Binding var day: Double
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Rectangle()
                    .frame(width: 5, height: 30, alignment: .center)
                    .foregroundColor(Color("colorOne"))
                    .position(x: 0, y: 0)
                
                Text("Darkness")
                    .font(.system(.title2, design: .rounded))
                    .bold()
                    .position(x: 0, y: -geometry.size.height * 0.4)
                    .foregroundColor(.white)
            }
            
            Rectangle()
                .frame(width: geometry.size.width, height: 5, alignment: .center)
                .foregroundColor(Color("colorOne"))
            
            
            VStack(spacing: 10) {
                Rectangle()
                    .frame(width: 5, height: 30, alignment: .center)
                    .foregroundColor(Color("colorOne"))
                    .position(x: geometry.size.width, y: 0)
                
                Text("7º day")
                    .font(.system(.title2, design: .rounded))
                    .bold()
                    .position(x: geometry.size.width, y: -geometry.size.height * 0.4)
                    .foregroundColor(.white)
            }
            
            YearsMarks(day: $day, geometry: geometry)
        }
    }
}

struct YearsMarks: View {
    @Binding var day: Double
    var geometry: GeometryProxy
    
    var body: some View {
        
        
        if day >= 1 {
            VStack(spacing: 10) {
                Rectangle()
                    .frame(width: 5, height: 30, alignment: .center)
                    .foregroundColor(Color("colorOne"))
                    .position(x: geometry.size.width * 0.142, y: 0)
                
                Text("1º day")
                    .font(.system(.title2, design: .rounded))
                    .bold()
                    .position(x: geometry.size.width * 0.142, y: -geometry.size.height * 0.4)
                    .foregroundColor(.white)
            }
        }
        
        if day >= 2 {
            VStack(spacing: 10) {
                Rectangle()
                    .frame(width: 5, height: 30, alignment: .center)
                    .foregroundColor(Color("colorOne"))
                    .position(x: geometry.size.width * 0.284, y: 0)
                
                Text("2º day")
                    .font(.system(.title2, design: .rounded))
                    .bold()
                    .position(x: geometry.size.width * 0.284, y: -geometry.size.height * 0.4)
                    .foregroundColor(.white)
            }
        }
        
        if day >= 3 {
            VStack(spacing: 10) {
                Rectangle()
                    .frame(width: 5, height: 30, alignment: .center)
                    .foregroundColor(Color("colorOne"))
                    .position(x: geometry.size.width * 0.426, y: 0)
                
                
                Text("3º day")
                    .font(.system(.title2, design: .rounded))
                    .bold()
                    .position(x: geometry.size.width * 0.426, y: -geometry.size.height * 0.4)
                    .foregroundColor(.white)
            }
        }
        
        if day >= 4 {
            VStack(spacing: 10) {
                Rectangle()
                    .frame(width: 5, height: 30, alignment: .center)
                    .foregroundColor(Color("colorOne"))
                    .position(x: geometry.size.width * 0.568, y: 0)
                
                Text("4º day")
                    .font(.system(.title2, design: .rounded))
                    .bold()
                    .position(x: geometry.size.width * 0.568, y: -geometry.size.height * 0.4)
                    .foregroundColor(.white)
            }
        }
        
        if day >= 5 {
            VStack(spacing: 10) {
                Rectangle()
                    .frame(width: 5, height: 30, alignment: .center)
                    .foregroundColor(Color("colorOne"))
                    .position(x: geometry.size.width * 0.71, y: 0)
                
                Text("5º day")
                    .font(.system(.title2, design: .rounded))
                    .bold()
                    .position(x: geometry.size.width * 0.71, y: -geometry.size.height * 0.4)
                    .foregroundColor(.white)
            }
        }
        
        if day >= 6 {
            VStack(spacing: 10) {
                Rectangle()
                    .frame(width: 5, height: 30, alignment: .center)
                    .foregroundColor(Color("colorOne"))
                    .position(x: geometry.size.width * 0.852, y: 0)
                
                Text("6º day")
                    .font(.system(.title2, design: .rounded))
                    .bold()
                    .position(x: geometry.size.width * 0.852, y: -geometry.size.height * 0.4)
                    .foregroundColor(.white)
            }
        }
    }
}

