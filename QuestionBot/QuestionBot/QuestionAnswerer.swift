protocol QuestionAnswerer {
    func responseToQuestion(question: String) -> String
}

struct MyQuestionAnswerer: QuestionAnswerer {
    func responseToQuestion(question: String) -> String {
        // TODO: Write a response 
        let lowerQuestion = question.lowercaseString
        if lowerQuestion == "where are the cookies?" {
            return "In the cookie jar!"
        }
        else if lowerQuestion=="what's your name?"{
            return "I'm Boobo😄"
        }
        else if lowerQuestion.hasPrefix("where") {
            return "To the North!"
        }
            //    else
        else {
            
            let defaultNumber = lowerQuestion.characters.count % 2
            
            if defaultNumber == 0 {
                return "That really depends😔"
            } else {
                return "Ask me again tomorrow😢"
            }
            
        }
    }
}
