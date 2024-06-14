//  the creation
//
//  Created by Higor  Lo Castro on 11/04/23.
//

import SwiftUI

struct MainView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State private var isOpeningViewActive = false
    
    @State private var year: Double = 0
    @State var didSelectdays: Bool = false
    @State var showHelp: Bool = false
    @State var daysArray: DaysArrayModel = DaysArrayModel()
    
    @State var selectedDaysCreation: CreationDayModel = CreationDayModel(imageName: "", ImageNumberDayCard: "", textName: "", changeDescription: "")
    
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Color("backgroundStart")
                    .ignoresSafeArea()
                
                VStack {
                    Spacer()
                        .frame(height: geometry.size.height * 0.4)
                    
                    ZStack {
                        TimelineView(day: $year)
                            .frame(width: geometry.size.width * 0.8)
                        
                        
                        if geometry.size.width > geometry.size.height {
                            CreationDayFiguresView(
                                day: $year,
                                didSelectDays: $didSelectdays,
                                daysArray: $daysArray,
                                selectedDays: $selectedDaysCreation,
                                geometry: geometry)
                        }
                        if geometry.size.width < geometry.size.height   {
                            CreationDayPortrait(
                                dayPortrait: $year,
                                didSelectDayPortrait: $didSelectdays,
                                daysArrayPortrait: $daysArray,
                                selectedDayPortrait: $selectedDaysCreation,
                                geometry: geometry)
                            
                        }
                    }
                    
                    
                    Slider(value: $year, in: 0...7, step: 1)
                        .onAppear() {
                            
                            if let thumbImage = UIImage(systemName: "play.fill") {
                                
                                let thumbConfig = UIImage.SymbolConfiguration(pointSize: 50, weight: .medium, scale: .medium)
                                let thumbImageLarge = thumbImage.withConfiguration(thumbConfig)
                                
                                let thumbView = UIImageView(image: thumbImageLarge)
                                thumbView.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
                                thumbView.contentMode = .scaleAspectFill
                                thumbView.isUserInteractionEnabled = false
                                
                                let slider = UISlider.appearance()
                                slider.setThumbImage(thumbImageLarge, for: .normal)
                            }
                        }
                        .frame(width: geometry.size.width * 0.7)
                    
                    Spacer()
                        .frame(height: geometry.size.height * 0.1)
                }
                .padding(.horizontal, geometry.size.width * 0.05)
                
                
                NavigationLink(destination: FinishView(),
                               isActive: $isOpeningViewActive) {
                    EmptyView()
                }
                               .opacity(0)
                
                Image("finish")
                    .resizable()
                    .scaledToFill()
                    .scaleEffect(0.1)
                    .position(x: geometry.size.width * 0.92, y: geometry.size.height * 0.93)
                
                    .onTapGesture {
                        withAnimation(Animation.easeIn(duration: 0.5)) {
                            self.isOpeningViewActive = true
                        }
                        
                    }
                
                Button {
                    showHelp = true
                } label: {
                    Image("HelpButton")
                        .resizable()
                        .scaledToFill()
                        .frame(width: geometry.size.width * 0.025, height: geometry.size.width * 0.025)
                }
                .position(x: geometry.size.width * 0.95, y: geometry.size.height * 0.08)
                .sheet(isPresented: $showHelp) {
                    HelpView(showHelp: $showHelp)
                }
                
            }
            .sheet(isPresented: $didSelectdays) {
                DetailsDaysView(days: $selectedDaysCreation, didSelectDays: $didSelectdays)
            }
        }
        .navigationBarHidden(true)
    }
}


import SwiftUI

struct HelpView: View {
    @Binding var showHelp: Bool
    
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                ZStack (alignment: .center) {
                    Color("backgroundFirstScreen")
                        .ignoresSafeArea()
                    
                    VStack {
                        Spacer()
                        Image("helpText")
                            .resizable()
                            .scaledToFill()
                            .frame(width: geometry.size.width * 0.7, height: geometry.size.width * 0.7 * 0.13)
                        
                        Spacer()
                    }
                }
            }
        }
    }
}
