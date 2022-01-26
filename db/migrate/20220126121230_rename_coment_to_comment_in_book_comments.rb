class RenameComentToCommentInBookComments < ActiveRecord::Migration[6.1]
  def up
    rename_column :book_comments, :coment, :comment
  end

  def down
    rename_column :book_comments, :comment, :coment
  end
end
