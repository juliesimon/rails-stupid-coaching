class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question
      if @question == "I am going to work!"
        @answer = "Great!"
      elsif @question.include?("?")
        @answer = "Silly question, get dressed and go to work!"
      else
        @answer = "I don't care, get dressed and go to work!"
      end
    end
  end
end


# def coach_answer_enhanced(your_message)
#   # TODO: return coach answer to your_message, with additional custom rules of yours!
#   answer = coach_answer(your_message)
#   if answer != "" && your_message != "I am going to work right now!".upcase
#     if your_message == your_message.upcase
#       return "I can feel your motivation! #{answer}"
#     else
#       return answer
#     end
#   else
#     return ""
#   end
# end
