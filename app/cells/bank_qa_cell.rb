class BankQaCell < Cell::Rails

  def question(args={})
    @questions = args[:questions]
    render
  end

  def answer
    render
  end

end
