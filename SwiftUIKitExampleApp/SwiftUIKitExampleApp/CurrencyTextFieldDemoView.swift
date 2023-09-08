//
//  CurrencyTextFieldDemoView.swift
//  SwiftUIKitExampleApp
//
//  Created by Youjin Phea on 17/06/20.
//  Copyright © 2020 youjinp. All rights reserved.
//

import SwiftUI
import SwiftUIKit

struct CurrencyTextFieldDemoView: View {
  
  @State private var value: Double? = 0.0
  @State private var focus = false
  
  var body: some View {
//    VStack {
//      CurrencyTextField("Enter amount", value: $amount, isResponder: $isTextFieldResponder, onReturn: {
//        // Handle return key press if needed
//      })
//      .textFieldStyle(RoundedBorderTextFieldStyle())
//      .padding()
//      .onTapGesture {
//        isTextFieldResponder = true
//      }
//
//      Text("Entered Value: \(amount ?? 0)")
//        .padding()
//    }
    VStack {
      CurrencyTextField("Amount", value: self.$value, isResponder: $focus, alwaysShowFractions: true, keyboardType: .numbersAndPunctuation)
        .font(.largeTitle)
        .multilineTextAlignment(TextAlignment.center)
      Button(action: {
        print("\(String(describing: self.value))")
      }) {
        Text("Print")
      }
      Spacer()
    }.padding([.top], 40)
      .contentShape(Rectangle())
      .dismissKeyboardOnSwipe()
      .dismissKeyboardOnTap()
      .onAppear {
        self.focus = true
      }
  }
  
}
