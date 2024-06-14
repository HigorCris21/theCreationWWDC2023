
//  the creation
//
//  Created by Higor  Lo Castro on 11/04/23.
//

import Foundation
import SwiftUI

class DaysArrayModel {
    var daysCreation: [CreationDayModel] = []
    
    init() {
        
        let darkDay: CreationDayModel = CreationDayModel(
            imageName: "at_The_Beginning",
            ImageNumberDayCard: "day_0_Card",
            textName: "THE EARTH WAS\nWITHOUT FORM AND EMPTY",
            changeDescription: "inTheBeginningDescription")
        daysCreation.append(darkDay)
        
        let firstDayCreation: CreationDayModel = CreationDayModel(
            imageName: "day_One",
            ImageNumberDayCard: "day_1_Card",
            textName: "GOD CREATED LIGHT\nAND SEPARATED IT FROM DARKNESS",
            changeDescription: "firstDayDescription")
        daysCreation.append(firstDayCreation)
        
        let secondDayCreation: CreationDayModel = CreationDayModel(
            imageName: "day_Two",
            ImageNumberDayCard: "day_2_Card",
            textName: "GOD CREATED THE FIRMAMENT\nTO SEPARATE THE WATERS",
            changeDescription: "secondDayDescription")
        daysCreation.append(secondDayCreation)
        
        let thirdDayCreation: CreationDayModel = CreationDayModel(
            imageName: "day_Three",
            ImageNumberDayCard: "day_3_Card",
            textName: "GOD CREATED DRY LAND\nAND PLANTS",
            changeDescription: "thirdDayDescription")
        daysCreation.append(thirdDayCreation)
        
        let fourthDayCreation: CreationDayModel = CreationDayModel(
            imageName: "day_Four",
            ImageNumberDayCard: "day_4_Card",
            textName: "GOD CREATED THE SUN,\nTHE MOON, AND THE STARS",
            changeDescription: "fourthDayDescription")
        daysCreation.append(fourthDayCreation)
        
        let fifthDayCreation: CreationDayModel = CreationDayModel(
            imageName: "day_Five",
            ImageNumberDayCard: "day_5_Card",
            textName: "GOD CREATED SEA\nCREATURES AND BIRDS",
            changeDescription: "fifthDayDescription")
        daysCreation.append(fifthDayCreation)
        
        let sixthDayCreation: CreationDayModel = CreationDayModel(
            imageName: "day_Six",
            ImageNumberDayCard: "day_6_Card",
            textName: "GOD CREATED LAND ANIMALS,\nMAN, AND WOMAN",
            changeDescription: "sixthDayDescription")
        daysCreation.append(sixthDayCreation)
        
        let seventhDayCreation: CreationDayModel = CreationDayModel(
            imageName: "day_Seven",
            ImageNumberDayCard: "day_7_Card",
            textName: "GOD RESTED",
            changeDescription: "seventhDayDescription")
        daysCreation.append(seventhDayCreation)
    }
}

