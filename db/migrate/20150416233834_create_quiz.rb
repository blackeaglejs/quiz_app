class CreateQuiz < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
    	t.string :quiz_name
    end
  end
end
