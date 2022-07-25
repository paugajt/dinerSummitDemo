//
//  ContentView.swift
//  Shared
//
//  Created by Justin Pauga on 7/21/22.
//

import SwiftUI

struct ContentView: View {
    @State var sheetPresented = false
    
    var body: some View {
        VStack {
            header
            offersCarousel
            placeList
            footer
                .sheet(isPresented: $sheetPresented) {
                    mySheet
                }
            Spacer()
        }
        .padding()
    }
}

private extension ContentView {
    var header: some View {
        HStack {
            Text("My super cool app")
                .font(.title3)
                .fontWeight(.bold)
            Spacer()
            Image(systemName: "line.3.horizontal")
                .onTapGesture {
                    sheetPresented.toggle()
                }
        }
        .padding(.bottom, 8)
    }
    
    var offersCarousel: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack {
                ForEach(Achievment.listOfAchievments, id: \.self) {
                    carouselCard(for: $0)
                }
            }
        }
    }
    
    func carouselCard(for achievement: Achievment) -> some View {
        VStack {
            Text(achievement.title)
                .font(.headline)
                .fontWeight(.bold)
            Image(systemName: achievement.badgeName)
                .padding()
            Text(achievement.dateEarned)
                .font(.caption)
                .fontWeight(.light)
        }
        .cornerRadius(10)
        .shadow(radius: 5)
        .padding()
        .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.black, lineWidth: 1)
            )
    }
    
    var placeList: some View {
        List {
            Section("My List") {
                ForEach((1...10), id: \.self) {
                    Text("\($0)")
                }
            }
        }
    }
    
    var footer: some View {
        HStack {
            Image(systemName: "sun.min")
            Image(systemName: "sun.max")
            Image(systemName: "sun.max.circle")
            Image(systemName: "sunrise")
            Image(systemName: "sunset")
        }
    }
    
    var mySheet: some View {
        Text("I'm a sheet!")
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
