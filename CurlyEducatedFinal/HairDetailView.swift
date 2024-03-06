//
//  HairDetailView.swift
//  CurlyEducatedFinal
//
//  Created by Edilia Bueno on 12/7/23.
//

import Foundation
import SwiftUI

//struct HairDetailView: View {
//    
//    var hair: Hair
//        @Binding var showNameInfo: Bool
//        @Binding var showStateInfo: Bool
//        @Binding var showCoorInfo: Bool
//    
//    var body: some View {
//        
//        Form {
//            
//            Section(header: Text("2A")
//                .fontWeight(.heavy)
//                .foregroundColor(.green)
//            ) {
//                
//                // button so that the whole thing can be pressed and it toggles
//                Button("\(hair.descriptionA)", action: { showNameInfo.toggle() })
//                .foregroundColor(.black)
//                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
//                .sheet(isPresented: $showNameInfo, content: {
//                    Text("\(hair.typeB)")
//                })
//            }
//            Section(header: Text("2B")
//                .fontWeight(.heavy)
//                .foregroundColor(.green)
//            ) {
//                Button("\(hair.descriptionB)", action: { showStateInfo.toggle() })
//                    .foregroundColor(.black)
//                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
//                    .sheet(isPresented: $showStateInfo, content: {
//                        Text("\(hair.descriptionB)")
//                    })
//            }
//            
//            Section(header: Text("2C")
//                           .fontWeight(.heavy)
//                           .foregroundColor(.green)
//                       ) {
//                           Button("\(hair.descriptionC)", action: { showCoorInfo.toggle() })
//                               .foregroundColor(.black)
//                               .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
//                               .sheet(isPresented: $showCoorInfo, content: {
//                                   Text("\(hair.descriptionC)")
//                               })
//                       }
//
//            
//        } // Form
//        .navigationBarTitle("", displayMode: .inline)
//        
//        
//    } // body
//    
//} // LandmarkDetailView
//
////struct HairDetailView_Previews: PreviewProvider {
////    static var previews: some View {
////    }
////}
////
//
//
