//
//  SongView.swift
//  spotify
//
//  Created by Natalie Ammerman on 9/23/24.
//

import SwiftUI

let backgroundGradient = LinearGradient(colors: [.magBlue, .magDark], startPoint: .top, endPoint: .bottom)

//struct TimeView: View {
    //@State private var seconds: Double = 0
    
    
//}

struct SongView: View {
    // @EnvironmentObject var song: Song
    @State private var isPlaying: Bool = false
    @State private var isShuffle: Bool = false
    @State private var isRepeat: Bool = false
    @State private var isLiked: Bool = false
    
    @State private var seconds: Double = 0
    
    //@State private var songMinTotal: Double =
    //@State private var songSecTotal: Int
    //@State private var currentTimeSec: Double = 0
    //@State private var songLengthSec: Double = 233
    //@State private var currentTime: String = "\((currentTimeSec%60)):((currentTimeSec
    //@State private var songLength: String =
    
    //private let hintKey: String
    //private let value: Binding<Int>
    
    //init(value: Binding<Int>, hintKey: String) {
        //self.value = value
        //self.hintKey = hintkey
    //}
    
    //private func getTime() {
    //seconds =
    //}
    
    //private func slideEnded() {
        //self.seconds = self.seconds.rounded()
    //}
    
    //private func timeChanged(toValue value: Double) {
        //$seconds.value = value
        //let roundedValue = Int(value.rounded())
        //if roundedValue == self.value.value {
            //return
        //}
        //self.value.value = roundedValue
    //}
    
    //var currentTime: Double {
        //return
    //}
    
    var body: some View {
        ZStack() {
            backgroundGradient
            VStack(spacing: 15) {
                HStack() {
                    Button() {
                    } label: {
                        Image(systemName: "chevron.down").foregroundStyle(.white)
                    }
                    Spacer()
                    // playlist name
                    Button() {
                    } label: {
                        Text("solo walkin").font(.system(size: 10)).bold().foregroundStyle(.white)
                    }
                    Spacer()
                    Button() {
                    } label: {
                        Image(systemName: "ellipsis").foregroundStyle(.white)
                    }
                }
                .padding(.horizontal, 28)
                .padding(.vertical, 28)
                ZStack() {
                    HStack() {
                        // album cover
                        Spacer()
                        Image(.magdalenaBay).resizable().scaledToFit().background(RoundedRectangle(cornerRadius: 10)
                            .foregroundStyle(.black).shadow(color: .black, radius: 10))
                        Spacer()
                    }
                    //.shadow(color: .black, radius: 10, x: 5, y: 5)
                    //HStack() {
                        
                    //}
                }
                .padding(.horizontal, 20)
                .padding(.vertical, 28)
                HStack() {
                    VStack(alignment: .leading) {
                        // song name
                        Button() {
                        } label: {
                            Text("Killing Time").font(.system(size: 15)).bold().foregroundStyle(.white)
                        }
                        // artist name
                        Button() {
                        } label: {
                            Text("Magdalena Bay").font(.system(size: 10)).foregroundStyle(.white)
                        }
                    }
                    Spacer()
                    .padding(.horizontal, 8)
                    VStack() {
                        Button(action: {
                            self.isLiked.toggle()
                        }) {
                            Image(systemName: self.isLiked == true ? "suit.heart.fill" : "suit.heart").font(.system(size: 20)).foregroundStyle(.white)
                        }
                    }
                    //.padding(.vertical, 8)
                }
                .padding(.horizontal, 28)
                //.padding(.vertical, 2)
                VStack() {
                    HStack() {
                        Spacer()
                        Slider(value: $seconds, in: 0...233)//.onChange(of: seconds, perform: timeChanged)
                        //Slider(value: Binding<Double>(getValue: { self.$sliderValue.value }, setValue: { self.sliderChanged(toValue: $0) }), through: 233.0) { if !$0 { self.slideEnded() } }
                        Spacer()
                    }
                    .padding(.horizontal, 20)
                    //.padding(.vertical, 1)
                    HStack() {
                        // current time
                        Text("1:53").font(.system(size: 10)).foregroundStyle(.white)
                        Spacer()
                        // length of song
                        Text("3:53").font(.system(size: 10)).foregroundStyle(.white)
                    }
                    .padding(.horizontal, 28)
                }
                //.padding(.horizontal, 20)
                .padding(.vertical, 1)
                HStack() {
                    // shuffle button
                    Button(action: {
                        self.isShuffle.toggle()
                    }) {
                        Image(systemName: "shuffle").font(.system(size: 20)).foregroundStyle(self.isShuffle == true ? .green : .white)
                    }
                    Spacer()
                    // rewind
                    Button() {
                    } label: {
                        Image(systemName: "backward.end.fill").font(.system(size: 30)).foregroundStyle(.white)
                    }
                    Spacer()
                    // pause and play
                    Button(action: {
                        self.isPlaying.toggle()
                    }) {
                        Image(systemName: self.isPlaying == true ? "pause.circle.fill" : "play.circle.fill").font(.system(size: 60)).foregroundStyle(.white)
                    }
                    Spacer()
                    // fastforward
                    Button() {
                    } label: {
                        Image(systemName: "forward.end.fill").font(.system(size: 30)).foregroundStyle(.white)
                    }
                    Spacer()
                    // repeat
                    Button(action: {
                        self.isRepeat.toggle()
                    }) {
                        Image(systemName: "repeat").font(.system(size: 20)).foregroundStyle(self.isRepeat == true ? .green : .white)
                    }
                }
                .padding(.horizontal, 28)
                .padding(.vertical, 20)
                HStack() {
                    // listening device
                    Button() {
                    } label: {
                        Image(systemName: "hifispeaker.2").font(.system(size: 15)).foregroundStyle(.white)
                    }
                    Spacer()
                    // share
                    Button() {
                    } label: {
                        Image(systemName: "square.and.arrow.up").font(.system(size: 15)).foregroundStyle(.white)
                    }
                    // queue
                    Button() {
                    } label: {
                        Image(systemName: "text.line.first.and.arrowtriangle.forward").font(.system(size: 15)).foregroundStyle(.white)
                    }
                }
                .padding(.horizontal, 28)
                .padding(.vertical, 20)
            }
        }
        .ignoresSafeArea()
    }
}

struct SongView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(ColorScheme.allCases, id: \.self, content: SongView().preferredColorScheme)
    }
}
