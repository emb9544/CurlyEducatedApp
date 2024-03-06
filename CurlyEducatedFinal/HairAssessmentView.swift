//
//  HairAssessmentView.swift
//  CurlyEducatedFinal
//
//  Created by Edilia Bueno on 11/25/23.
//

import SwiftUI

struct Hair: Identifiable {
    var id = UUID()
    var typeA: String
    var descriptionA: String
    var typeB: String
    var descriptionB: String
    var typeC: String
    var descriptionC: String
    var image: String
}

struct HairRow: View {
    var hair: Hair
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            
                Image(hair.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 300)
                    .cornerRadius(5)
            

            Text(hair.typeA)
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.leading)
            
            Text(hair.typeB)
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.leading)

            Text(hair.typeC)
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.leading)

            HStack(spacing: 2) {
                // ForEach(1...5, id: \.self)
            }

            Text(hair.descriptionA)
                .font(.body)
                .lineLimit(3)
                .foregroundColor(.gray)

            Text(hair.descriptionB)
                .font(.body)
                .lineLimit(3)
                .foregroundColor(.gray)

            Text(hair.descriptionC)
                .font(.body)
                .lineLimit(3)
                .foregroundColor(.gray)

            Spacer()
        }
        .padding(.horizontal, 8)
        .padding(.vertical, 8)
    }
}

struct HairAssessmentView: View {
    var hair: [Hair] = [
        Hair(typeA: "2A", descriptionA: "Type 2A hair grows straight at the crown and creases toward the end. The wave shapes diverge slightly from straight lines.", typeB: "2B", descriptionB: "Type 2B hair grows straight, but starts forming medium to large S-shaped waves at the crown (think beach waves).", typeC: "2C", descriptionC: "Type 2C waves are usually identified as small to medium size waves that form into a letter S shape as they grow.", image: "wave"),
        Hair(typeA: "3A", descriptionA: "Curl type 3A features stretched spirals of curls that are large in diameter and roll down from the crown.", typeB: "3B", descriptionB: "Type 3B has well-defined medium size springs that resemble corkscrews.", typeC: "3C", descriptionC: "Type 3C hair has springs that are smaller and more tightly-packed than 3B", image: "curlys"),
        Hair(typeA: "4A", descriptionA: "Curl type 4A can be recognized by its small but distinctively S-shaped strands sequenced into looped, tight rings", typeB: "4B", descriptionB: "Type 4B is characterized by its tiny zigzagged pattern, which is often accompanied by compressed and s-shape coils.", typeC: "4C", descriptionC: "Type 4C tightly coiled strands are more fragile than any other pattern and have a very tight zig-zag shape that is sometimes indiscernible to the eye.", image: "coily")
    ]

    var body: some View {
        NavigationView{
            
            VStack {
                    Text("Curly Type Guide ")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                    .foregroundColor(.pink)
                
                List(hair) { hair in NavigationLink (destination: ContentView()) {
                    HairRow(hair: hair)
                }
                }
            }
        }
        
    }//Body
    
    //    NavigationView {
    //        VStack {
    //            Text("Curly Education")
    //                .font(.largeTitle)
    //                .fontWeight(.bold)
    //                .padding()
    //                .foregroundColor(.pink)
    //
    //            List(curls) { curl in
    //                NavigationLink(destination: ContentView()) {
    //                    CurlsRow(curl: curl)
    //                }
    //            }
    //        }
    //    }
        
}

//struct ContentView: View {
//    // Your ContentView code goes here...
//}

struct HairAssessmentView_Previews: PreviewProvider {
    static var previews: some View {
        HairAssessmentView()
    }
}
