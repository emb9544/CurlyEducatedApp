//
//  ContentView.swift
//  CurlyEducatedFinal
//
//  Created by Edilia Bueno on 11/24/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isAnimating = true
    @State private var isLoading = true

    var body: some View {
        NavigationView {
            ZStack {
                // Background Image
                Image("background")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .edgesIgnoringSafeArea(.all)

                if isLoading {
                    LoadingView()

                } else {
                    ScrollView {
                        VStack(alignment: .center, spacing: 2) {
                            // Logo and App Name
    

                            // Navigation Bar
                            NavigationLink(destination: HairAssessmentView()) {
                                Text("Curly Type Guide")
                                    .padding(20)
                                    .frame(maxWidth: .infinity)
                                    .background(Color(red: 183 / 255, green: 110 / 255, blue: 121 / 255))
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
                            NavigationLink(destination: CurlyDays()) {
                                Text("Curly Education")
                                    .padding(20)
                                    .frame(maxWidth: .infinity)
                                    .background(Color(red: 183 / 255, green: 110 / 255, blue: 121 / 255))
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
                            NavigationLink(destination: BestProducts()) {
                                Text("Best Products")
                                    .padding(20)
                                    .frame(maxWidth: .infinity)
                                    .background(Color(red: 183 / 255, green: 110 / 255, blue: 121 / 255))
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }

                            // Image
                            Image("haur")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(maxWidth: .infinity, maxHeight: 300)


                            // Title and Subtitle
                            VStack {
                                Text("Embrace Your Curls")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                Text("Where Every Strand Tells a Beautiful Story")
                                    .font(.subheadline)
                                    .foregroundColor(.white)
                            }
                            .padding(50)
                            .background(Color(red: 240 / 255, green: 187 / 255, blue: 195 / 255))
                            .frame( height: 110)
                            

                            // Image
                            Image("curls")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(maxWidth: .infinity, maxHeight: 300)

                            // Text and Button
                            VStack {
                                Text("Wanna Learn more about your Curls!")
                                    .font(.headline)
                                Text("Take the Hair Assessment")
                                    .font(.subheadline)
                            }
                            .padding()
                            .frame(maxWidth: .infinity)
                            //.aspectRatio(contentMode: .fit)
                            .background(Color(red: 240 / 255, green: 187 / 255, blue: 195 / 255))
                            .foregroundColor(.white)
                            .cornerRadius(10)

                            
                        }
                    }//ScrollView

                } //else
            }//ZStack
            
            .onAppear {
                // Simulate loading time
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    isLoading = false
                }
            }
            .navigationBarItems(
                            leading: !isLoading ? HStack {
                                Image("OIP")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 50, height: 50, alignment: .center)
                                Text("Curly Hair Guide")
                                    .font(.title)
                                    .bold()
                            } : nil
                        )
        
        }//NavigationView
        
    }//body
}//struct


struct LoadingView: View {
    var body: some View {
        VStack {
            Image("OIP")
                .resizable()
                //.aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .opacity(0.8)

            Text("Curly Educated")
                .font(.headline)
                .padding()

            // Add your loading indicators or activity views here
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.gray.opacity(0.5))
        .ignoresSafeArea()
    }
}


struct CurlyEducationView: View {
    var body: some View {
        Text("Curly Education Page")
    }
}

//struct BestProductsView: View {
//    var body: some View {
//        Text("Best Products Page")
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
