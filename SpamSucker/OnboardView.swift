//
//  OnboardView.swift
//  SpamSucker
//
//  Created by Ronan Furuta on 2/18/23.
//

import SwiftUI

struct OnboardView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("BAIM INC SPAM STOPPER").font(.largeTitle).bold()
        
        
            HStack {
            VStack(alignment: .leading, spacing:0) {
            
            Text("4 Easy Steps").font(.system(size: 45)).fontWeight(.bold).foregroundColor(/*@START_MENU_TOKEN@*/Color("Primary")/*@END_MENU_TOKEN@*/)
                Text("TO ENABLE JUST STOP!").font(.system(size: 26)).fontWeight(.bold).foregroundColor(/*@START_MENU_TOKEN@*/Color("AccentColor")/*@END_MENU_TOKEN@*/).padding(.bottom)
     
            }
                Spacer()
            }
            HStack {
            Text("1.").fontWeight(.bold) + Text(" In the Settings app, scroll down and open the ") + Text("Messages App Settings").fontWeight(.bold)
                Spacer()
            }.padding(.vertical)
            HStack {
                Text("2.").fontWeight(.bold) + Text(" Scroll down to ") + Text(" Message Filtering").fontWeight(.bold) + Text(" and tap on") + Text(" Unknown & Spam").fontWeight(.bold)
                Spacer()
        }.padding(.vertical)
            HStack {
            Text("3.").fontWeight(.bold) + Text(" Enable ") + Text("Filter Unknown Senders").fontWeight(.bold)
                Spacer()
            }.padding(.vertical)
            HStack {
            Text("4.").fontWeight(.bold) + Text(" Under ") + Text("SMS filtering").fontWeight(.bold) + Text(" check BAIM SPAM SUCKER")
                Spacer()
            }.padding(.vertical)
        Spacer()
            
            
    }.padding()
    }
}

struct OnboardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardView()
    }
}
