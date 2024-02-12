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
  //KmSpeed Add
  var KmSpeed: String { return locationManager.KmSpeed }
  var speedColor: Color { return locationManager.speedColor }
  var speedAccuracy: String { return locationManager.speedAccuracy }
  let plusMinus = "\u{00B1}"
  
    var body: some View {
      VStack {
          VStack {
              Text(speed)
                  .foregroundColor(speedColor)
                  .font(.system(size: 200, design: .rounded))
                  .minimumScaleFactor(0.01)
                  .lineLimit(1)
              Text("mi/h")
                  .font(.system(size: 50, design: .rounded))
                  .padding(.bottom)
              Text("Error: \(plusMinus)\(speedAccuracy) mi/h")
                  .font(.system(size: 20, design: .rounded))
                  .padding(.bottom)
            
            //KmSpeed Add
              Text(KmSpeed)
                  .foregroundColor(speedColor)
                  .font(.system(size: 200, design: .rounded))
                  .minimumScaleFactor(0.01)
                  .lineLimit(1)
              Text("km/h")
                  .font(.system(size: 50, design: .rounded))
                  .padding(.bottom)
          }
      }
  }
}
#Preview {
    ContentView()
}

