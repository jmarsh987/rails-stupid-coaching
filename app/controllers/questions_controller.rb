class QuestionsController < ApplicationController
    
    def ask
    end

    def answer
        question = params[:question]
        @answer = coach_response(question)
    end

    def coach_response(question)
        if question == "I am going to work"
            return "Great!"
        elsif question.end_with?("?")
            return "Silly question, get dressed and go to work!"
        else
            return "I dont care, get dressed and got to work!"
        end
    end
end
