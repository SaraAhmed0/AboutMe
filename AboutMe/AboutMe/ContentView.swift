//
//  ContentView.swift
//  AboutMe
//
//  Created by Sara Almezeini on 12/07/1445 AH.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.openURL) var openURL
    
    var body: some View {
        ZStack {
            Color("background")
                .ignoresSafeArea()
            
            VStack{
                Image("header")
                    .resizable()
                    .frame(width: 400.0, height: 170.0)
                    .cornerRadius(20)
                Spacer()
            }.ignoresSafeArea()
            VStack{
                HStack{
                    
                    Image("profile").resizable().scaledToFit().frame(width: 130,height:130).clipShape(Circle()).padding(.top, 40.0)
                    Spacer()
                    HStack{
                        Button {
                            openURL(URL(string: "https://saraalmezeini.com/portfolio")!)
                        } label: {
                            ZStack{
                                Circle()
                                    .fill(Color("button"))
                                    .frame(width: 50, height: 50)
                                Image(systemName: "suitcase.fill")
                                    .accentColor(.white)
                                
                            }
                        }
                        
                        Button {
                            openURL(URL(string: "http://linkedin.com/in/sara-al-mezeini")!)
                        } label: {
                            ZStack{
                                Circle()
                                    .fill(Color("button"))
                                    .frame(width: 50, height: 50)
                                Image("linkedin").resizable().scaledToFit().frame(width: 20,height:20)
                                
                            }
                        }
                        Button {
                            openURL(URL(string: "https://github.com/SaraAhmed0?tab=repositories")!)
                        } label: {
                            ZStack{
                                Circle()
                                    .fill(Color("button"))
                                    .frame(width: 50, height: 50)
                                Image("github").resizable().scaledToFit().frame(width: 20,height:20)
                                
                            }
                        }
                        
                    }.padding(.top, 100).padding(.leading, 60)
                }
                Text("Sara Almezeini")
                    .font(.system(size: 28, weight: .bold)).padding(.trailing, 100.0)
                Text("Fresh Graduate")
                    .font(.system(size: 20, weight: .semibold)).padding(.trailing, 140.0).padding(.top, -4)
                    .foregroundStyle(Color("pink"))
                Spacer()
                Divider()
                
                
                ScrollView{
                    VStack{
                        ZStack{
                            
                            Rectangle().frame(height: 400).cornerRadius(10).foregroundColor(.white)
                            VStack(alignment:.leading){
                                
                                Text("About Me").foregroundStyle(Color("pink")).bold().padding(.bottom).padding(.trailing, 220)
                                
                                
                                Spacer()
                                
                                Text("A highly motivated Information Systems graduate with a strong desire for challenging and dynamic work environments that necessitate a wide range of skills. Throughout my academic years, I participated in various programs where valuable skills developed in areas such as entrepreneurship, communication, creativity, and critical thinking. My ambition is to secure a role within an organization where my skills and knowledge can be leveraged to contribute to the growth and success of the company.")
                                    .frame(width: 300)
                                
                            }.padding()
                            
                            
                        }
                    }
                    VStack{
                        ZStack{
                            
                            Rectangle().frame(height: 400).cornerRadius(10).foregroundColor(.white)
                            VStack(alignment:.leading){
                                
                                Text("Education").foregroundStyle(Color("pink")).bold().padding(.bottom).padding(.trailing, 220)
                                
                                //                                Spacer()
                                
                                HStack{
                                    Text("King Saud University").foregroundStyle(Color("button")).bold()
                                    Spacer()
                                    Text("June 2023").italic()
                                }
                                Text("Bachelor of Science in CIS")
                                
                                Text("Gpa: 4.7/5")
                                Spacer()
                                HStack{
                                    Text("Apple Developer Academy").foregroundStyle(Color("button")).bold()
                                    Spacer()
                                    Text("July 2022").italic()
                                }
                                Text("9-month program")
                                Spacer()
                                
                                HStack{
                                    Text("Apple Developer Academy").foregroundStyle(Color("button")).bold()
                                    Spacer()
                                    Text("March 2022").italic()
                                }
                                Text("6-month program")
                                
                            }.padding()
                            
                            
                        }
                    }
                    VStack{
                        ZStack{
                            
                            Rectangle().frame(height: 100).cornerRadius(10).foregroundColor(.white)
                            VStack(alignment:.leading){
                                
                                Text("Certificates").foregroundStyle(Color("pink")).bold().padding(.bottom).padding(.trailing, 210)
                                Text("IELTS").foregroundStyle(Color("button")).bold()
                                Text("Score: 7, fluent")
                                Spacer()
                    
                                
                            }.padding()
                            
                            
                        }
                    }
                }.ignoresSafeArea() .padding(.horizontal)
            }.padding()
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
