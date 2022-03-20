//
//  corona.swift
//  corona
//
//  Created by Yaman Koujan on 19/03/2022.
//

import Foundation

struct UserCovidInfo: Identifiable {
    var id = UUID()
    var fullName: String
    var area: String
    var numberofDoses: Int
}

