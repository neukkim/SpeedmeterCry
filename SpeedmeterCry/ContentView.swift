//
//  ContentView.swift
//  SpeedmeterCry
//
//  Created by SunMin Hong on 2/12/24.
//

import SwiftUI

struct ContentView: View {
  @ObservedObject var locationManager = LocationManager()
  var speed: String { return locationManager.speed }
  var speedColor: Color { return locationManager.speedColor }
  var speedAccuracy: String { return locationManager.speedAccuracy }
  let plusMinus = "\u{00B1}"
  
    var body: some View {
      VStack {
          VStack {
              Text(speed)
                  .foregroundColor(speedColor)
                  .font(.system(size: 500, design: .rounded))
                  .minimumScaleFactor(0.01)
                  .lineLimit(1)
              Text("mi/h")
                  .font(.system(size: 50, design: .rounded))
                  .padding(.bottom)
              Text("Error: \(plusMinus)\(speedAccuracy) mi/h")
                  .font(.system(size: 20, design: .rounded))
                  .padding(.bottom)
          }
      }
  }
}
#Preview {
    ContentView()
}

