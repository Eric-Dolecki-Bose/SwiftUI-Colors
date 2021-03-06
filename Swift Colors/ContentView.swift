//
//  ContentView.swift
//  Swift Colors
//
//  Created by Eric Dolecki on 3/2/20.
//  Copyright © 2020 Eric Dolecki. All rights reserved.
//

import SwiftUI
import WaterfallGrid
import GridStack

struct ContentView: View {
    
    // Just as an example so one can see all the colors supported.
    let myColors:[Color] = [Color.aliceBlue, Color.antiqueWhite, Color.aqua, Color.aquamarine, Color.azure, Color.beige,
                            Color.bisque, Color.blanchedAlmond, Color.blueViolet, Color.brown, Color.burleywood, Color.cadetBlue,
                            Color.chartreuse, Color.chocolate, Color.coral, Color.cornflowerBlue, Color.cornsilk, Color.crimson,
                            Color.cyan, Color.darkBlue, Color.darkCyan, Color.darkGoldenRod, Color.dimGray, Color.darkGreen,
                            Color.darkKhaki, Color.darkMagenta, Color.darkOliveGreen, Color.darkOrange, Color.darkOrchid,
                            Color.darkRed, Color.darkSalmon, Color.darkSeaGreen, Color.darkSlateBlue, Color.darkSlateGray,
                            Color.darkTurqoise, Color.darkViolet, Color.deepPink, Color.deepSkyBlue, Color.dimGray]
    
    var body: some View {
        NavigationView {
            VStack {

                // https://github.com/pietropizzi/GridStack
                
                GridStack(minCellWidth: 60, spacing: 6, numItems: myColors.count, alignment: .leading) { index, cellWidth in
                    Text("\(index):\(cellWidth)")
                        .background(self.myColors[index])
                        .foregroundColor(Color.white)
                        .shadow(radius: 2.0)
                }
                
                /*
                WaterfallGrid((0 ..< self.myColors.count), id: \.self) { index in
                  Text("Color")
                    .background(self.myColors[index])
                    .foregroundColor(Color.white)
                    .shadow(radius: 2.0)
                }
                .gridStyle (
                    columns: 7, spacing: 4,
                    padding: EdgeInsets(top: 16, leading: 8, bottom: 16, trailing: 8),
                    animation: .easeInOut(duration: 0.5)
                )
                .scrollOptions(
                    direction: .vertical,
                    showsIndicators: true
                )
                */
                
            }
            .navigationBarTitle("CSS Colors in SwiftUI")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension Color {
  
    init(hex: Int) {
        self.init(red: Double((hex >> 16) & 0xff) / 255, green: Double((hex >> 8) & 0xff) / 255, blue: Double(hex & 0xff) / 255)
    }
    
    static let aliceBlue = Color(hex: 0xf0f8ff)
    static let antiqueWhite = Color(hex: 0xfaebd7)
    static let aqua = Color(hex: 0x00ffff)
    static let aquamarine = Color(hex: 0x7fffd4)
    static let azure = Color(hex: 0xf0ffff)
    static let beige = Color(hex: 0xf5f5dc)
    static let bisque = Color(hex: 0xffe4c4)
    static let blanchedAlmond = Color(hex: 0xffebcd)
    static let blueViolet = Color(hex: 0x8a2be2)
    static let brown = Color(hex: 0xa52a2a)
    static let burleywood = Color(hex: 0xdeb887)
    static let cadetBlue = Color(hex: 0x5f9ea0)
    static let chartreuse = Color(hex: 0x7fff00)
    static let chocolate = Color(hex: 0xd2691e)
    static let coral = Color(hex: 0xff7f50)
    static let cornflowerBlue = Color(hex: 0x6495ed)
    static let cornsilk = Color(hex: 0xfff8dc)
    static let crimson = Color(hex: 0xdc143c)
    static let cyan = Color(hex: 0x00ffff)
    static let darkBlue = Color(hex: 0x00008B)
    static let darkCyan = Color(hex: 0x008B8B)
    static let darkGoldenRod = Color(hex: 0xb8860b)
    static let darkGray = Color(hex: 0xa9a9a9)
    static let darkGreen = Color(hex: 0x006400)
    static let darkKhaki = Color(hex: 0xbdb76b)
    static let darkMagenta = Color(hex: 0x8b008b)
    static let darkOliveGreen = Color(hex: 0x556b2f)
    static let darkOrange = Color(hex: 0xff8c00)
    static let darkOrchid = Color(hex: 0x9932cc)
    static let darkRed = Color(hex: 0x8b0000)
    static let darkSalmon = Color(hex: 0xe9967a)
    static let darkSeaGreen = Color(hex: 0x8fbc8f)
    static let darkSlateBlue = Color(hex: 0x483d8b)
    static let darkSlateGray = Color(hex: 0x2f4f4f)
    static let darkTurqoise = Color(hex: 0x00ced1)
    static let darkViolet = Color(hex: 0x9400d3)
    static let deepPink = Color(hex: 0xff1493)
    static let deepSkyBlue = Color(hex: 0x00bfff)
    static let dimGray = Color(hex: 0x696969)
    static let dodgerBlue = Color(hex: 0x1e90ff)
    static let fireBrick = Color(hex: 0xb22222)
    static let floralWhite = Color(hex: 0xfffaf0)
    static let forestGreen = Color(hex: 0x228b22)
    static let fuchsia = Color(hex: 0xff00ff)
    static let gainsboro = Color(hex: 0xdcdcdc)
    static let ghostWhite = Color(hex: 0xf8f8ff)
    static let gold = Color(hex: 0xffd700)
    static let goldenRod = Color(hex: 0xdaa520)
    static let greenYellow = Color(hex: 0xadff2f)
    static let honeyDew = Color(hex: 0xf0fff0)
    static let hotPink = Color(hex: 0xff69b4)
    static let indianRed = Color(hex: 0xcd5c5c)
    static let indigo = Color(hex: 0x4b0082)
    static let ivory = Color(hex: 0xfffff0)
    static let khaki = Color(hex: 0xf0e68c)
    static let lavendar = Color(hex: 0xe6e6fa)
    static let lavendarBlush = Color(hex: 0xfff0f5)
    static let lawnGreen = Color(hex: 0x7cfc00)
    static let lemonChiffon = Color(hex: 0xfffacd)
    static let lightBlue = Color(hex: 0xadd8e6)
    static let lightCoral = Color(hex: 0xf08080)
    static let lightCyan = Color(hex: 0xe0ffff)
    static let lightGoldenRodYellow = Color(hex: 0xfafad2)
    static let lightGray = Color(hex: 0xd3d3d3)
    static let lightGreen = Color(hex: 0x90EE90)
    static let lightPink = Color(hex: 0xffb6c1)
    static let lightSalmon = Color(hex: 0xffa07a)
    static let lightSeaGreen = Color(hex: 0x20b2aa)
    static let lightSkyBlue = Color(hex: 0x87cefa)
    static let lightSlateGray = Color(hex: 0x778899)
    static let lightSteelBlue = Color(hex: 0xb0c4de)
    static let lightYellow = Color(hex: 0xffffe0)
    static let lime = Color(hex: 0x00ff00)
    static let limeGreen = Color(hex: 0x32cd32)
    static let linen = Color(hex: 0xfaf0e6)
    static let magenta = Color(hex: 0xff00ff)
    static let maroon = Color(hex: 0x800000)
    static let mediumAquaMarine = Color(hex: 0x66cdaa)
    static let mediumBlue = Color(hex: 0x0000cd)
    static let mediumOrchid = Color(hex: 0xba55d3)
    static let mediumPurple = Color(hex: 0x9370db)
    static let mediumSeaGreen = Color(hex: 0x3cb371)
    static let mediumSlateBlue = Color(hex: 0x7b68ee)
    static let mediumSpringGreen = Color(hex: 0x00fa9a)
    static let mediumTurquoise = Color(hex: 0x48d1cc)
    static let mediumVioletRed = Color(hex: 0xc71585)
    static let midnightBlue = Color(hex: 0x191970)
    static let mintCream = Color(hex: 0xf5fffa)
    static let mistyRose = Color(hex: 0xffe4e1)
    static let moccasin = Color(hex: 0xffe4b5)
    static let navajoWhite = Color(hex: 0xffdead)
    static let navy = Color(hex: 0x000080)
    static let oldLace = Color(hex: 0xfdf5e6)
    static let olive = Color(hex: 0x808000)
    static let oliveDrab = Color(hex: 0x6b8e23)
    static let orangeRed = Color(hex: 0xff4500)
    static let orchid = Color(hex: 0xda70d6)
    static let paleGoldenRod = Color(hex: 0xeee8aa)
    static let paleGreen = Color(hex: 0x98fb98)
    static let paleTurquoise = Color(hex: 0xafeeee)
    static let paleVioletRed = Color(hex: 0xdb7093)
    static let papayaWhip = Color(hex: 0xffefd5)
    static let peachPuff = Color(hex: 0xffdab9)
    static let peru = Color(hex: 0xcd853f)
    static let plum = Color(hex: 0xdda0dd)
    static let powderBlue = Color(hex: 0xb0e0e6)
    static let rebeccaPurple = Color(hex: 0x663399)
    static let rosyBrown = Color(hex: 0xbc8f8f)
    static let royalBlue = Color(hex: 0x4169e1)
    static let saddleBrown = Color(hex: 0x8b4513)
    static let salmon = Color(hex: 0xfa8072)
    static let sandyBrown = Color(hex: 0xf4a460)
    static let seaGreen = Color(hex: 0x2e8b57)
    static let seaShell = Color(hex: 0xfff5ee)
    static let sienna = Color(hex: 0xa0522d)
    static let silver = Color(hex: 0xc0c0c0)
    static let skyBlue = Color(hex: 0x87ceeb)
    static let slateBlue = Color(hex: 0x6a5acd)
    static let slateGray = Color(hex: 0x708090)
    static let snow = Color(hex: 0xfffafa)
    static let springGreen = Color(hex: 0x00ff7f)
    static let steelBlue = Color(hex: 0x4682b4)
    static let tan = Color(hex: 0xd2b48c)
    static let teal = Color(hex: 0x008080)
    static let thistle = Color(hex: 0xd8bfd8)
    static let tomato = Color(hex: 0xff6347)
    static let turquoise = Color(hex: 0x40e0d0)
    static let violet = Color(hex: 0xee82ee)
    static let wheat = Color(hex: 0xf5deb3)
    static let whiteSmoke = Color(hex: 0xf5f5f5)
    static let yellowGreen = Color(hex: 0x9acd32)
}
