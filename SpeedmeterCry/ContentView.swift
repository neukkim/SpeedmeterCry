//
//  ContentView.swift
//  SpeedmeterCry
//
//  Created by SunMin Hong on 2/12/24.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
  @ObservedObject var locationManager = LocationManager()
  var speed: String { return locationManager.speed }
  //KmSpeed Add
  var KmSpeed: String { return locationManager.KmSpeed }
  //var KmSpeed: String = "3"
  var speedColor: Color { return locationManager.speedColor }
  var speedAccuracy: String { return locationManager.speedAccuracy }
  let plusMinus = "\u{00B1}"
  
//  var tTSManager = TTSManager()
  //test
  let synthesizer = AVSpeechSynthesizer()
  func text2speech() {
      // If you write A in the text2speech function, synthesizer.speak(utterance) is not worked.
      // let synthesizer = AVSpeechSynthesizer()
      let utterance = AVSpeechUtterance(string: KmSpeed)
      //utterance.voice = AVSpeechSynthesisVoice(language: "en-GB")
    utterance.voice = AVSpeechSynthesisVoice(language: "ko-KR")
      utterance.rate = 0.52
      self.synthesizer.speak(utterance)
  }
  //test
  
    var body: some View {
      VStack {
          VStack {
              Text(speed)
                  .foregroundColor(speedColor)
                  .font(.system(size: 100, design: .rounded))
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
                  .font(.system(size: 100, design: .rounded))
                  .minimumScaleFactor(0.01)
                  .lineLimit(1)
              Text("km/h")
                  .font(.system(size: 50, design: .rounded))
                  .padding(.bottom)
            
            //test tts
//              Button("cry") {
//                let utterance = AVSpeechUtterance(string: "Hello")
//                utterance.voice = AVSpeechSynthesisVoice(language: "en-AU")
//                utterance.rate = 0.3
//                
//                let synthesizer = AVSpeechSynthesizer()
//                synthesizer.speak(utterance)
//               // synthesizer.stopSpeaking(at: .immediate)
//              }
            
            
            Button("CRY") {
              text2speech()
            }
            
          }
      }
  }
}

#Preview {
    ContentView()
}

