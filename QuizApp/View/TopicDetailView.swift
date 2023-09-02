//
//  TopicDetailView.swift
//  QuizApp
//
//  Created by Lu Maw on 02/09/2023.
//

import SwiftUI
import AVKit
import WebKit
import AVFoundation

var player2: AVAudioPlayer!
struct TopicDetailView: View {
    let topic: Topic
    
    let player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "Primitive", ofType: "mp4")!))
//        let layer = AVPlayerLayer(player: player)
//        layer.frame = view.bounds
//        view.layer.addSublayer(layer)
    
    @State private var selectedAnswerIndex: Int? = nil
    @State private var isCorrect: Bool = false
    
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack {
                Text(topic.title)
                    .font(.title)
                    .padding(.horizontal)
                    .padding(.bottom, 5)
                Spacer()
                Button(action: {
                    playSound()
                }){
                    Text("Play")
                        .foregroundColor(Color.green)
                        .font(.system(size: 32))
                }

            }
            
            Text(topic.description)
                .font(.body)
                .padding(.bottom, 0)
                .padding(.horizontal)
            VideoView(videoID: topic.videoId)
                .frame(minHeight: 0, maxHeight: UIScreen.main.bounds.height *  0.3)
                .cornerRadius(12)
                .padding(.horizontal, 5)
            

            
            Spacer()
            
                .navigationBarTitle(topic.title, displayMode: .inline)
        }
    }
    
    func playSound(){
        let url = Bundle.main.url(forResource: "lofi", withExtension: "mp3")
        player2 = try! AVAudioPlayer(contentsOf: url!)
        player2.play()
    }
}

struct TopicDetailView_Previews: PreviewProvider {
    static var previews: some View {
        /// need to provide a Topic instance when creating the preview
        ///  create an exampleTopic with some placeholder values and then pass it as the topic parameter when creating the TopicDetailView preview.
        let exampleTopic = Topic(
                    title: "Example Title",
                    description: "Example Description",
                    videoId: "exampleVideoID"
                )
                
                return TopicDetailView(topic: exampleTopic)
    }
}
