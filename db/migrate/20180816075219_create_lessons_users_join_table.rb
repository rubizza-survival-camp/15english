class CreateLessonsUsersJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :lessons, :users
  end
end
