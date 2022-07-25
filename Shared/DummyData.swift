//
//  DummyData.swift
//  SwiftUIDemo
//
//  Created by Justin Pauga on 7/24/22.
//

import Foundation

struct Achievment: Hashable {
    let title: String
    let dateEarned: String
    let badgeName: String
}

extension Achievment {
    static var listOfAchievments: [Achievment] = [
    Achievment(title: "A legend was born", dateEarned: "Jan 24, 1986", badgeName: "person.fill.checkmark"),
    Achievment(title: "Drivers License", dateEarned: "Jan 31, 2002", badgeName: "person.crop.rectangle"),
    Achievment(title: "Graduated High School", dateEarned: "May 8, 2004", badgeName: "brain"),
    Achievment(title: "Graduated College", dateEarned: "May 18, 2018", badgeName: "doc.circle"),
    Achievment(title: "First app released", dateEarned: "Jun 30, 2019", badgeName: "mappin.circle.fill"),
    Achievment(title: "Something else awesome", dateEarned: "Sep 23, 2020", badgeName: "figure.walk.circle")
    ]
}
