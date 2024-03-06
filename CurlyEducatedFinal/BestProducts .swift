//
//  BestProducts .swift
//  CurlyEducatedFinal
//
//  Created by Edilia Bueno on 12/6/23.
//

import SwiftUI

struct BestProducts: View {
    var products: [Prod] = [
        Prod(title: "Curls Smith", author: "Best for 2A, 2B, 2C", rating: 5, excerpt: "This product is best for wavy hair! It is lightweight and defines the perfect curls", image: "curlSmith"),
        Prod(title: "Mielle Organics", author: "Best for 3A, 3B, 3C", rating: 5, excerpt: "This is the best product for curly hair! It helps define and moisturize your hair. ", image: "mielle"),
        Prod(title: "Pattern Beauty", author: "Best for 4A, 4B, 4C", rating: 5, excerpt: "This product is great for coily hair! It helps with moisture and brings shine to the curls!", image: "pattern")
    ]

    var body: some View {
        NavigationView{
            VStack{
                Text("Best Products")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding()
                            .foregroundColor(.green)
            
                List(products) { product in
                    ProductsRow(product: product)
                    
                }
                
            }//VStack
        }//NavView
        }//body
    
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


struct Prod: Identifiable {
    var id = UUID()
    var title: String
    var author: String
    var rating: Int
    var excerpt: String
    var image: String
}

struct ProductsRow: View {
    var product: Prod

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            
                Image(product.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 200)
                    .cornerRadius(2)
            

            Text(product.title)
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.leading)

            Text(" \(product.author.capitalized(with: Locale.current))")
                .font(.subheadline)
                .foregroundColor(.black)

            HStack(spacing: 2) {
                ForEach(1...5, id: \.self) { index in
                    Image(systemName: index <= product.rating ? "star.fill" : "star")
                        .font(.caption)
                        .foregroundColor(.yellow)
                }
            }

            Text(product.excerpt)
                .font(.body)
                .lineLimit(3)
                .foregroundColor(.gray)
                .padding(.horizontal, 8)

            Spacer()
        }
        .padding(.vertical, 8)
    }
}

struct BestProducts_Previews: PreviewProvider {
    static var previews: some View {
        BestProducts()
    }
}
