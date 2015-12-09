class Bank::MyAnswersController < Bank::ApplicationController
  def index
    @questions = current_user.answered_questions
  end
end
