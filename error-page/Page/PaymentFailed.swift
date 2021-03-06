//
//  PaymentFailed.swift
//  error-page
//
//  Created by NghiNV on 28/01/2022.
//

import SwiftUI

struct PaymentFailed: View {
    var body: some View {
        ZStack (alignment: Alignment(horizontal: .center, vertical: .bottom)) {
            Image(uiImage: #imageLiteral(resourceName: "15_Payment Error"))
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            VStack (alignment: .center, spacing: 30) {
                Text("Payment Failed")
                    .font(.title)
                
                Text("Your card was rejected by the vendor. Please try again")
                    .multilineTextAlignment(.center)
                    .opacity(0.7)
                
                Button(action: {
                    
                }) {
                    Text("Back".uppercased())
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding(.vertical)
                        .padding(.horizontal, 40)
                        .background(Capsule().foregroundColor(Color(#colorLiteral(red: 1, green: 0.4352941176, blue: 0.4352941176, alpha: 1))))
                        .shadow( color: Color(#colorLiteral(red: 0.337254902, green: 0.4, blue: 0.7607843137, alpha: 0.17)), radius: 25, x: 0, y: 13)
                    
                }
                
            }
            .padding(.horizontal, 70)
            .padding(.bottom, UIScreen.main.bounds.height * 0.1)
        }
    }
}

struct PaymentFailed_Previews: PreviewProvider {
    static var previews: some View {
        PaymentFailed()
    }
}
