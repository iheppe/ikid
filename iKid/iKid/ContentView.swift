//
//  ContentView.swift
//  iKid
//
//  Created by Isabella Heppe on 5/4/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Text("Welcome to iKid!")
            Good()
                .tabItem {
                    Text("Good")
                }
            Pun()
                .tabItem {
                    Text("Pun")
                }
            Dad()
                .tabItem {
                    Text("Dad")
                }
            Knockknock()
                .tabItem {
                    Text("Knock Knock")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Good: View {
    var body: some View {
        NavigationView {
            VStack{
                Spacer()
                Text("What’s a pirate’s least favorite letter?")
                Spacer()
                HStack {
                    Spacer()
                    NavigationLink(destination: GoodPunchline()) {
                        Text("Next")
                    }.padding(20)
                }.padding(20)
            }
        }.navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct GoodPunchline: View {
    var body: some View {
        Spacer()
        VStack{
            Text("Dear sir or madam,")
                .padding(10)
            Text("Your IP address has been flagged for illegally downloading movies. We will have to suspend your account, pending further investigation.")
                .padding(10)
            Text("Sincerely,")
                .padding(10)
            Text("The internet provider.")
        }.frame(width: 350)
        Spacer()
        GeometryReader { geo in
            Image("pirate")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: geo.size.width - 40)
                .padding(20)
        }
        Spacer()
    }
}

struct Pun: View {
    var body: some View {
        NavigationView {
            VStack{
                Spacer()
                Text("Do you know why you never hear any puns about steak?")
                    .padding(10)
                Spacer()
                HStack {
                    Spacer()
                    NavigationLink(destination: PunPunchline()) {
                        Text("Next")
                    }.padding(20)
                }.padding(20)
            }
        }.navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct PunPunchline: View {
    var body: some View {
        Spacer()
        Text("Steak puns are a rare medium well done.")
        Spacer()
        GeometryReader { geo in
            Image("steak")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: geo.size.width - 40)
                .padding(20)
        }
        Spacer()
    }
}

struct Dad: View {
    var body: some View {
        NavigationView {
            VStack{
                Spacer()
                Text("A priest and a rabbit walk into a blood clinic.")
                    .padding(10)
                Spacer()
                HStack {
                    Spacer()
                    NavigationLink(destination: DadPunchline()) {
                        Text("Next")
                    }.padding(20)
                }.padding(20)
            }
        }.navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct DadPunchline: View {
    var body: some View {
        Spacer()
        Text("The priest says \"I think I'm a type-a.\"")
            .padding(10)
        Text("The rabbit says \"I think I'm a typo.\"")
            .padding(10)
        Spacer()
        GeometryReader { geo in
            Image("rabbi")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: geo.size.width - 40)
                .padding(20)
        }
        Spacer()
    }
}

struct Knockknock: View {
    var body: some View {
        NavigationView {
            VStack{
                Spacer()
                Text("Knock knock.")
                Spacer()
                HStack {
                    Spacer()
                    NavigationLink(destination: WhosThere()) {
                        Text("Next")
                    }.padding(20)
                }.padding(20)
            }
        }.navigationViewStyle(StackNavigationViewStyle())
        
    }
}



struct WhosThere: View {
    var body: some View {
        VStack{
            Spacer()
            Text("Who's there?")
            Spacer()
            HStack {
                Spacer()
                NavigationLink(destination: Punch()) {
                    Text("Next")
                }.padding(20)
            }.padding(20)
        }
    }
}

struct Punch: View {
    var body: some View {
        VStack{
            Spacer()
            Text("You.")
            Spacer()
            HStack {
                Spacer()
                NavigationLink(destination: PunchWho()) {
                    Text("Next")
                }.padding(20)
            }.padding(20)
        }
    }
}

struct PunchWho: View {
    var body: some View {
        VStack{
            Spacer()
            Text("You who?")
            Spacer()
            HStack {
                Spacer()
                NavigationLink(destination: KnockPunchline()) {
                    Text("Next")
                }.padding(20)
            }.padding(20)
        }
    }
}

struct KnockPunchline: View {
    var body: some View {
        Spacer()
        Text("Big summer blowout!")
        Spacer()
//        Image("blowout")
//            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .frame(width: 250.0, height: 250.0)
//            .padding(20)
        GeometryReader { geo in
            Image("blowout")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: geo.size.width - 40)
                .padding(20)
        }
        Spacer()
    }
}
