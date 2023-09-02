//
//  CourseDataService.swift
//  QuizApp
//
//  Created by Lu Maw on 02/09/2023.
//

//CONNECT DATA SERVICE
import Foundation
class CourseDataService{
    static let topics: [Topic] = [
        Topic(
            title: "Primitive Types",
            description: """
                        A type is a set of values (e.g. integers, floaters, etc.) and a set of operations (e.g. +, -, *, /, etc.) on them.
                        
                        Data types can be categorized as either primitive or reference.
                        
                        The primitive types used in this course define the set of operations for numbers and boolean (true/false) values.
                        
                        Examples are int, double, and boolean.
                        Read more about this at:
                        https://longbaonguyen.github.io/courses/apcsa/lecture2.pdf.
                        """),
        
        Topic(
            title: "Using Objects",
              description: """
                        A string is an object storing a sequence of text characters.
                        - A string is not a primitive type. String is an object type

                        Ways to initialize a string:
                        - String a = new String("text");
                        - String b = "text";
                        - String c; c = "text";

                        Read more about this at https://longbaonguyen.github.io/courses/apcsa/lecture6.pdf.
                        """),
        
        Topic(
            title: "Boolean Expressions and If Statements",
              description: """
                         Operators can be used to compare values with each other to run code conditionally.

                         Relational operators compare two numbers.
                         Some examples are:
                         - ==
                         - >
                         - >=
                         - <
                         -

                         Read more about this at https://longbaonguyen.github.io/courses/apcsa/lecture9.pdf.
                        """),
        
        Topic(
            title: "Iteration",
            description: "Looping in Java."),
        
        Topic(
            title: "Classes",
            description: "Understanding Java classes and objects."),
        
        Topic(
            title: "Arrays",
            description: "Working with arrays in Java."),
        
        Topic(
            title: "ArrayLists",
            description: "Introduction to ArrayLists."),
        
        Topic(
            title: "2D Arrays",
            description: "Working with two-dimensional arrays."),
        
        Topic(
            title: "Overloading & Overriding",
            description: "Polymorphism and method overriding."),
        
        Topic(
            title: "Inheritance with Interface and Abstract Classes",
            description: "Learn about interface and abstract classes."),
        
        Topic(
            title: "Exception Handling",
            description: "Handling exceptions in Java."),
        
        Topic(
            title: "Multithreading",
            description: "Introduction to multithreading.")
    ]
    
}

let primitiveTypesQuiz: [QuizQuestion] = [
    QuizQuestion(
        question: "Which of these is a primitive data type in Java?",
        options: ["String", "int", "ArrayList", "Object"],
        correctAnswerIndex: 1
    ),
    QuizQuestion(
        question: "What does the 'boolean' data type represent in Java?",
        options: [
            "A true/false value",
            "A floating-point number",
            "A whole number",
            "A text string"
        ],
        correctAnswerIndex: 0
    ),
    QuizQuestion(
        question: "Which operator is used for equality comparison in Java?",
        options: ["==", "<", ">", "!=", "="],
        correctAnswerIndex: 0
    ),
    QuizQuestion(
        question: "What is the result of 5 + 3.5 in Java?",
        options: ["5.0", "8.5", "8", "Invalid operation"],
        correctAnswerIndex: 1
    )
]
