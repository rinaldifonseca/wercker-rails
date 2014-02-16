require "spec_helper"

describe 'Post Integration', :js => true do  
  context 'test' do
    it "test" do
      visit '/posts'
      click_link "New Post"
      fill_in("post_title", with: "blog_post")
      click_button("Create Post")
      visit '/posts'
      page.should have_content("blog_post")
    end
  end
end
