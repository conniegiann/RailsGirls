require 'rails_helper'

feature 'Posting Comments' do 
  background do
    @post = Post.create(title: 'Awesome Blog Post', body: 'Lorem ipsum dolor sit amet')
  end

  scenario 'Posting a comment' do
    visit post_path(@post)

    comment = "This is just filler dummy text!!!!!"

    fill_in 'comment_body', with: comment
    click_button 'Add comment'

    expect(page).to have_content comment
  end

end