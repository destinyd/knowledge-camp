class Bank::MyQuestionsController < Bank::ApplicationController
  def index
    case params[:state]
    when 'answered'
      @my_questions = current_user.created_questions.answered.includes(:answers)
    when 'unanswered'
      @my_questions = current_user.created_questions.unanswered.includes(:answers)
    else
      @my_questions = current_user.created_questions.includes(:answers)
    end
  end
end
