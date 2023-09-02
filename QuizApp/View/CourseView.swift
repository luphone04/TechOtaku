//
//  CourseView.swift
//  QuizApp
//
//  Created by Lu Maw on 02/09/2023.
//
//COURSE VIEW FILE
import SwiftUI
import AVKit
import WebKit


struct CourseView: View {
    var body: some View {
        NavigationView {
                    VStack {
                        Text("Java Beginner Course")
                            .font(.largeTitle)
                            .padding()

                        Text("Hello")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                            .padding()

                        List {
                            ForEach(0..<CourseDataService.topics.count, id: \.self) { index in
                                NavigationLink(
                                    destination: TopicDetailView(
                                        topic: CourseDataService.topics[index],
                                        quizQuestions: primitiveTypesQuiz // Pass the appropriate quiz questions here
                                    )
                                ) {
                                    Text(CourseDataService.topics[index].title)
                                }
                            }
                        }
                    }
                    .navigationBarTitle("JAVA", displayMode: .inline)
                }


    }
    func getQuizQuestions(for topic: Topic) -> [QuizQuestion] {
        switch topic.title {
        case "Primitive Types":
            return primitiveTypesQuiz
            // Add similar cases for other topics and their respective quiz questions
        default:
            return []
        }
    }
}

struct CourseView_Previews: PreviewProvider {
    static var previews: some View {
        CourseView()
    }
}


extension CourseView {
    struct TopicDetailView: View {
        let topic: Topic
        let quizQuestions: [QuizQuestion]
        let player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "Primitive", ofType: "mp4")!))
//        let layer = AVPlayerLayer(player: player)
//        layer.frame = view.bounds
//        view.layer.addSublayer(layer)
        
        @State private var selectedAnswerIndex: Int? = nil
        @State private var isCorrect: Bool = false
        
        var body: some View {
            VStack(alignment: .leading) {
                Text(topic.title)
                    .font(.title)
                    .padding(.horizontal)
                    .padding(.bottom, 5)
                
                Text(topic.description)
                    .font(.body)
                    .padding(.bottom, 0)
                    .padding(.horizontal)
                VideoView(videoID: "CX-BdDHW0Ho")
                

                
                Spacer()
                
                    .navigationBarTitle(topic.title, displayMode: .inline)
            }
        }
    }
}

struct VideoPlayerView: UIViewControllerRepresentable {
    let videoURL: URL

    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let player = AVPlayer(url: videoURL)
        let playerViewController = AVPlayerViewController()
        playerViewController.player = player
        return playerViewController
    }

    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) {
        // Update as needed
    }
}


struct QuizOptionView: View {
    let question: String
    let options: [String]
    let correctAnswerIndex: Int
    @Binding var selectedAnswerIndex: Int?
    let isCorrect: Bool
    let checkAnswer: (Int?) -> Void
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(question)
                .font(.subheadline)
            
//            ForEach(0..<options.count, id: \.self) { optionIndex in
//                Button(action: {
//                    selectedAnswerIndex = optionIndex
//                    checkAnswer(optionIndex)
//                }) {
//                    Text(options[optionIndex])
//                        .frame(maxWidth: .infinity)
//                        .padding()
//                        .background(
//                            RoundedRectangle(cornerRadius: 10)
//                                .foregroundColor(
//                                    (selectedAnswerIndex == optionIndex && isCorrect) ? .green :
//                                    (selectedAnswerIndex == optionIndex && !isCorrect) ? .red :
//                                    .clear
//                                )
//                        )
//                        .overlay(
//                            RoundedRectangle(cornerRadius: 10)
//                                .stroke(Color.blue, lineWidth: 1)
//                        )
//                }
//                .disabled(selectedAnswerIndex != nil)
//            }
        }
        
    }
}
