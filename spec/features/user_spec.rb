require 'rails_helper'

RSpec.describe 'Users', type: :feature do
  describe 'Index' do
    before :all do
      User.destroy_all
      Post.destroy_all
    end

    before :each do
      @user = User.create!(name: 'Tom', photo: 'https://i.ibb.co/n6R1Zh1/At-hospital.jpg', bio: 'Hospital.')
      visit users_path(@user)
    end

    it 'to see the username of all other users' do
      expect(page).to have_content('Tom')
    end

    it 'to see the profile picture for each user' do
      expect(page).to have_selector('img')
    end

    it 'to see the number of posts each user has written' do
      expect(page).to have_content('0')
    end

    it 'to click on a user and redirect to that user\'s show page' do
      click_link 'Tom'
      expect(page).to have_current_path(user_path(@user.id))
    end
  end

  describe 'Show' do
    before :all do
      User.destroy_all
      Post.destroy_all
    end

    before :each do
      @user = User.create!(name: 'Tom', photo: 'https://i.ibb.co/n6R1Zh1/At-hospital.jpg', bio: 'Hospital.')
      @post = Post.create(user: @user, title: 'The ephicacy of things', text: 'Wow the ephicacy of things',
                          comments_counter: 0, likes_counter: 0)
      visit user_path(@user.id)
    end

    it 'to see the user\'s profile picture' do
      expect(page).to have_selector('img')
    end

    it 'to see the user\'s username' do
      expect(page).to have_content('Tom')
    end

    it 'to see the number of posts the user has written' do
      expect(page).to have_content('1')
    end

    it 'to see the user\'s bio' do
      expect(page).to have_content('Hospital.')
    end

    it 'to see the user\'s first 3 posts' do
      expect(page).to have_content('The ephicacy of things')
    end

    it 'to see a button that lets me view all of a user\'s posts' do
      expect(page).to have_content('See All')
    end

    it 'to click a user\'s post, it redirects me to that post\'s show page' do
      click_link 'The ephicacy of things'
      expect(page).to have_current_path(user_post_path(@user.id, @post.id))
    end

    it 'to click to see all posts, it redirects me to the user\'s post\'s index page' do
      click_link 'See All'
      expect(page).to have_current_path(user_posts_path(@user.id))
    end
  end
end
