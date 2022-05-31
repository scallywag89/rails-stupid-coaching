class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    answer_one = 'Silly question, get dressed and go to work!'
    answer_two = 'Great!'
    if @question.end_with?("?")
      @the_answer = answer_one
    elsif @question == 'I am going to work'
      @the_answer = answer_two
    else
      @the_answer = "I don't care, get dressed and go to work!"
    end
  end
end
