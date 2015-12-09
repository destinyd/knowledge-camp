class BankQaCell < Cell::Rails
  include Devise::Controllers::Helpers
  helper_method :current_user

  def questions(args={})
    @questions = args[:questions]
    render
  end

  def answered_questions(args={})
    @questions = args[:questions]
    render
  end

  def question(args={})
    @question = args[:question]
    @answer_user = args[:answer_user]
    if @answer_user
      @user_answers = @question.answers.select{|answer| answer.creator == @answer_user}
      @answers = @question.answers.reject{|answer| answer.creator == @answer_user}
    else
      @answers = @question.answers
    end
    render
  end

  def answer(args={})
    @answer = args[:answer]
    render
  end
end
