
//  the creation
//
//  Created by Higor  Lo Castro on 11/04/23.
//

import SwiftUI

struct CreationDayFiguresView: View {
    @Binding var day: Double
    @Binding var didSelectDays: Bool
    @Binding var daysArray: DaysArrayModel
    @Binding var selectedDays: CreationDayModel
    
    var geometry: GeometryProxy
    
    var body: some View {
        if day >= 0 {
            CreationDayTopView(day: daysArray.daysCreation[0], width: geometry.size.width)
                .position(x: geometry.size.width * 0.43, y: -geometry.size.height * 0.08)
            
                .onTapGesture {
                    selectedDays = daysArray.daysCreation[0]
                    didSelectDays = true
                }
        }
        
        if day >= 1 {
            CreationDayBottomView(dayBottom: daysArray.daysCreation[1], width: geometry.size.width)
                .position(x: geometry.size.width * 0.515, y: geometry.size.height * 0.3)
                .onTapGesture {
                    selectedDays = daysArray.daysCreation[1]
                    didSelectDays = true
                }
        }
        
        if day >= 2 {
            CreationDayTopView(day: daysArray.daysCreation[2], width: geometry.size.width)
                .position(x: geometry.size.width * 0.645, y: -geometry.size.height * 0.068)
            
                .onTapGesture {
                    selectedDays = daysArray.daysCreation[2]
                    didSelectDays = true
                }
        }
        
        if day >= 3 {
            CreationDayBottomView(dayBottom: daysArray.daysCreation[3], width: geometry.size.width)
                .position(x: geometry.size.width * 0.774, y: geometry.size.height * 0.313)
                .onTapGesture {
                    selectedDays = daysArray.daysCreation[3]
                    didSelectDays = true
                }
        }
        
        if day >= 4 {
            CreationDayTopView(day: daysArray.daysCreation[4], width: geometry.size.width)
                .position(x: geometry.size.width * 0.880, y: -geometry.size.height * 0.072)
                .onTapGesture {
                    selectedDays = daysArray.daysCreation[4]
                    didSelectDays = true
                }
        }
        
        if day >= 5 {
            CreationDayBottomView(dayBottom: daysArray.daysCreation[5], width: geometry.size.width)
                .position(x: geometry.size.width * 1.01, y: geometry.size.height * 0.315)
                .onTapGesture {
                    selectedDays = daysArray.daysCreation[5]
                    didSelectDays = true
                }
        }
        
        if day >= 6 {
            CreationDayTopView(day: daysArray.daysCreation[6], width: geometry.size.width)
                .position(x: geometry.size.width * 1.1, y: -geometry.size.height * 0.069)
                .onTapGesture {
                    selectedDays = daysArray.daysCreation[6]
                    didSelectDays = true
                }
        }
        
        if day >= 7 {
            CreationDayBottomView(dayBottom: daysArray.daysCreation[7], width: geometry.size.width)
                .position(x: geometry.size.width * 1.25, y: geometry.size.height * 0.311)
                .onTapGesture {
                    selectedDays = daysArray.daysCreation[7]
                    didSelectDays = true
                }
        }
    }
}

struct CreationDayPortrait: View {
    @Binding var dayPortrait: Double
    @Binding var didSelectDayPortrait: Bool
    @Binding var daysArrayPortrait: DaysArrayModel
    @Binding var selectedDayPortrait: CreationDayModel
    
    var geometry: GeometryProxy
    
    var body: some View {
        
        if dayPortrait >= 0 {
            CreationDayTopView(day: daysArrayPortrait.daysCreation[0], width: geometry.size.width)
                .position(x: geometry.size.width * 0.4, y: geometry.size.height * 0.048)
            
                .onTapGesture {
                    selectedDayPortrait = daysArrayPortrait.daysCreation[0]
                    didSelectDayPortrait = true
                }
        }
        
        if dayPortrait >= 1 {
            CreationDayBottomView(dayBottom: daysArrayPortrait.daysCreation[1], width: geometry.size.width)
                .position(x: geometry.size.width * 0.47, y: geometry.size.height * 0.3)
                .onTapGesture {
                    selectedDayPortrait = daysArrayPortrait.daysCreation[1]
                    didSelectDayPortrait = true
                }
        }
        
        
        if dayPortrait >= 2 {
            CreationDayTopView(day: daysArrayPortrait.daysCreation[2], width: geometry.size.width)
                .position(x: geometry.size.width * 0.6, y: geometry.size.height * 0.05)
            
                .onTapGesture {
                    selectedDayPortrait = daysArrayPortrait.daysCreation[2]
                    didSelectDayPortrait = true
                }
        }
        
        if dayPortrait >= 3 {
            CreationDayBottomView(dayBottom: daysArrayPortrait.daysCreation[3], width: geometry.size.width)
                .position(x: geometry.size.width * 0.74, y: geometry.size.height * 0.29)
                .onTapGesture {
                    selectedDayPortrait = daysArrayPortrait.daysCreation[3]
                    didSelectDayPortrait = true
                }
        }
        
        if dayPortrait >= 4 {
            CreationDayTopView(day: daysArrayPortrait.daysCreation[4], width: geometry.size.width)
                .position(x: geometry.size.width * 0.85, y: geometry.size.height * 0.053)
                .onTapGesture {
                    selectedDayPortrait = daysArrayPortrait.daysCreation[4]
                    didSelectDayPortrait = true
                }
        }
        
        if dayPortrait >= 5 {
            CreationDayBottomView(dayBottom: daysArrayPortrait.daysCreation[5], width: geometry.size.width)
                .position(x: geometry.size.width * 0.98, y: geometry.size.height * 0.29)
                .onTapGesture {
                    selectedDayPortrait = daysArrayPortrait.daysCreation[5]
                    didSelectDayPortrait = true
                }
        }
        
        if dayPortrait >= 6 {
            CreationDayTopView(day: daysArrayPortrait.daysCreation[6], width: geometry.size.width)
                .position(x: geometry.size.width * 1.06, y: geometry.size.height * 0.05)
                .onTapGesture {
                    selectedDayPortrait = daysArrayPortrait.daysCreation[6]
                    didSelectDayPortrait = true
                }
        }
        
        if dayPortrait >= 7 {
            CreationDayBottomView(dayBottom: daysArrayPortrait.daysCreation[7], width: geometry.size.width)
                .position(x: geometry.size.width * 1.25, y: geometry.size.height * 0.29)
                .onTapGesture {
                    selectedDayPortrait = daysArrayPortrait.daysCreation[7]
                    didSelectDayPortrait = true
                }
        }
    }
}

