//
//  CurlyDays.swift
//  CurlyEducatedFinal
//
//  Created by Edilia Bueno on 12/13/23.
//

import SwiftUI


struct CurlyDays: View {
    var curls: [CurlyEducation] = [
        CurlyEducation(id: UUID(), title: "The Bonnett", excerpt: "Bonnets shield hair from friction and absorption into cotton pillowcases, preventing breakage, knots, and moisture loss as you sleep. Those with curly and coily textures have long utilized bonnets to preserve their curls, but straight and thin hair can also benefit.", image: "bonnett", author: "the Key to No Frizz"),
        CurlyEducation(id: UUID(), title: "Scalp Brush", excerpt: "A scalp brush is the perfect tool to help you combine hair care with self-care! From exfoliating away dead skin cells and product build-up to stimulating blood circulation and hair growth", image: "scalp", author: "the Key to Hair Growth"),
        CurlyEducation(id: UUID(), title: "Brush", excerpt: "A perfect styling brush with no ball points will help define your curls. In addition, brushes with ball points cause hair loss", image: "brush", author: "Styling Brush for the Perfect Curls")
    ]

    var body: some View {
        NavigationView {
            VStack {
                Text("Curly Education")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                    .foregroundColor(.pink)
                
                List(curls) { curl in
                    NavigationLink(destination: ContentView()) {
                        CurlsRow(curl: curl)
                    }
                }
            }
        }
    }
}
struct CurlyEducation: Identifiable {
    var id = UUID()
    var title: String
    var excerpt: String
    var image: String
    var author: String
}

struct CurlsRow: View {
    var curl: CurlyEducation // Fix: Change Curls to CurlyEducation
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Image(curl.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 300)
                .cornerRadius(5)
            
            Text(curl.title)
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.leading)
            
            Text(" \(curl.author.capitalized(with: Locale.current))")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            HStack(spacing: 2) {
                Text(curl.excerpt)
                    .font(.body)
                    .lineLimit(3)
                    .foregroundColor(.gray)
            }
            .padding(.horizontal, 8)
            
            Spacer()
        }
        .padding(.vertical, 8)
    }
}


struct CurlyDays_Previews: PreviewProvider {
    static var previews: some View {
        CurlyDays() // Fix: Change CurlyEducationView() to CurlyDays()
    }
}

