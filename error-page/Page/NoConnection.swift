//
//  NoConnection.swift
//  error-page
//
//  Created by NghiNV on 28/01/2022.
//

import SwiftUI

struct NoConnection: View {
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .bottom)) {
            Image("1_No Connection")
                .resizable()
                .aspectRatio(contentMode: .fill)
            .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 30) {
                Text("Oops!...")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                Text("Something wrong with your \nconnection. Please try \nagain")
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .opacity(0.7)
                
                Button(action: {}) {
                    Text("Retry".uppercased())
                        .fontWeight(.semibold)
                        .padding(.vertical)
                        .padding(.horizontal, 30)
                        .foregroundColor(.black)
                        .background(Capsule().foregroundColor(.white))
                }
            }
            .padding(.horizontal, 70)
            .padding(.bottom, UIScreen.main.bounds.height * 0.1)
        }
    }
}

struct NoConnection_Previews: PreviewProvider {
    static var previews: some View {
        NoConnection()
    }
}
