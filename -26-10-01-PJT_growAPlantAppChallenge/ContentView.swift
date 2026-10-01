//
//  ContentView.swift
//  -26-10-01-PJT_growAPlantAppChallenge
//
//  Created by PM Student F251-14 on 10/1/26.
//

import SwiftUI

struct ContentView: View
{
    @State var treeStage = 0
    @State var isWet = false
    
    var body: some View
    {
        ZStack
        {
            LinearGradient(
                colors: [Color("backgroundColor1"), Color("backgroundColor2"), Color.green, Color.brown],
                startPoint: .top,
                endPoint: .bottom)
            .ignoresSafeArea()
            
            VStack
            {
                VStack
                {
                    Text("Grow a plant!")
                        .font(.system(size: 50))
                        .foregroundStyle(Color.green)
                        .bold()
                        .font(.footnote)
                        .shadow(color: Color(.white), radius: 4, x: 4, y: 4)
                }
                .padding(30)
                
                VStack
                {
                    if isWet
                    {
                        switch treeStage
                        {
                        case 1:
                            Image("treeStage1WET")
                                .resizable()
                                .scaledToFit()
                        case 2:
                            Image("treeStage2WET")
                                .resizable()
                                .scaledToFit()
                        case 3:
                            Image("treeStage3WET")
                                .resizable()
                                .scaledToFit()
                        case 4:
                            Image("treeStage4WET")
                                .resizable()
                                .scaledToFit()
                        case 5:
                            Image("treeStage5WET")
                                .resizable()
                                .scaledToFit()
                        default:
                            Image("treeStage0WET")
                                .resizable()
                                .scaledToFit()
                        }
                    }
                    else if !isWet
                    {
                        switch treeStage
                        {
                        case 1:
                            Image("treeStage1")
                                .resizable()
                                .scaledToFit()
                        case 2:
                            Image("treeStage2")
                                .resizable()
                                .scaledToFit()
                        case 3:
                            Image("treeStage3")
                                .resizable()
                                .scaledToFit()
                        case 4:
                            Image("treeStage4")
                                .resizable()
                                .scaledToFit()
                        case 5:
                            Image("treeStage5")
                                .resizable()
                                .scaledToFit()
                        default:
                            Image("treeStage0")
                                .resizable()
                                .scaledToFit()
                        }
                    }
                }
                .frame(width: 300, height: 300)
                
                ZStack
                {
                    
                    Image(systemName: "circle.fill")
                        .font(.system(size: 120))
                        .foregroundStyle(Color.brown)
                    
                    VStack
                    {
                        Button(action: {
                            if isWet == true
                            {
                                treeStage += 1
                                isWet = false
                            }
                            else
                            {
                                isWet = true
                            }
                        })
                        {
                            if !isWet
                            {
                                Image(systemName: "circle.fill")
                                    .font(.system(size: 100))
                                    .foregroundStyle(Color.blue)
                            }
                            else
                            {
                                Image(systemName: "circle.fill")
                                    .font(.system(size: 100))
                                    .foregroundStyle(Color.green)
                            }
                        }
                    }
                }
                
                VStack
                {
                    if !isWet
                    {
                        switch treeStage
                        {
                        case 0:
                            Text("I just planted a seed, can you water it?")
                        case 1...3:
                            Text("Yippee! Now water it some more!")
                        case 4:
                            Text("Now it's full grown, Yay! Don't water it anymore!")
                        case 5:
                            Text("It's gone.")
                        default:
                            Text("But it changes nothing.")
                        }
                    }
                    else
                    {
                        switch treeStage
                        {
                        case 0...3:
                            Text("Now wait for it to grow...")
                        case 4:
                            Text("What have you done.")
                        default:
                            Text("You try to water it.")
                        }
                    }
                }
                .font(.system(size: 20))
                .foregroundStyle(Color.blue)
                .bold()
                .font(.footnote)
                .shadow(color: Color(.white), radius: 4, x: 4, y: 4)
            }
        }
    }
}

#Preview {
    ContentView()
}
