class Bank::DashboardController < Bank::ApplicationController
  def index
  end

  def root
  end

  def courses
  end

  def hot_courses
  end

  def search_courses
  end

  def course
    @course = KcCourses::Course.published.first
  end

  def study
    @course = KcCourses::Course.published.first
  end

  def mine_courses
  end

  def studying_courses
  end

  def fav_courses
  end

  def studied_courses
  end

  def test_questions
  end

  def flaw_test_questions
  end

  def fav_test_questions
  end

  def questions
  end

  def my_answers
  end

  def notes
  end

  def manage
  end
end
