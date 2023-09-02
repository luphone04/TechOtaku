//
//  CourseView.swift
//  QuizApp
//
//  Created by Lu Maw on 02/09/2023.
//
//COURSE VIEW FILE
import SwiftUI

struct CourseView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Java Beginner Course")
                    .font(.largeTitle)
                    .padding()

                Text("Learn the fundamentals of Java programming.")
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
            .navigationBarTitle("Home", displayMode: .inline)
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
                Spacer()
                
                Section(header: Text("Quiz").font(.headline)) {
                    ForEach(0..<quizQuestions.count, id: \.self) { index in
                        QuizOptionView(
                            question: quizQuestions[index].question,
                            options: quizQuestions[index].options,
                            correctAnswerIndex: quizQuestions[index].correctAnswerIndex,
                            selectedAnswerIndex: $selectedAnswerIndex,
                            isCorrect: isCorrect,
                            checkAnswer: { selectedOptionIndex in
                                checkAnswer(questionIndex: index, selectedOptionIndex: selectedOptionIndex)
                            }
                        )
                    }
                }
            }
            .navigationBarTitle(topic.title, displayMode: .inline)
        }
        
        func checkAnswer(questionIndex: Int, selectedOptionIndex: Int?) {
            if selectedOptionIndex == quizQuestions[questionIndex].correctAnswerIndex {
                isCorrect = true
            } else {
                isCorrect = false
            }
        }
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
