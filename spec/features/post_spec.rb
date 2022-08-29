require 'rails_helper'

RSpec.describe 'Posts', type: :feature do
  describe 'Index' do
    before :all do
      User.destroy_all
      Post.destroy_all
    end

    before :each do
      @user = User.create!(name: 'Tom', photo: 'https://i.ibb.co/n6R1Zh1/At-hospital.jpg', bio: 'Hospital.')
      @post = Post.create(user: @user, title: 'The ephicacy of things', text: 'Wow the ephicacy of things',
                          comments_counter: 0, likes_counter: 0)
      Comment.create(user: @user, post: @post, text: 'Hi Frank!')
      visit user_posts_path(@user.id)
    end

    it 'see the user\'s profile picture' do
      expect(page).to have_selector('img')
    end

    it 'to see the user\'s username' do
      expect(page).to have_content('Tom')
    end

    it 'to see the number of posts the user has written' do
      expect(page).to have_content('Posts: 1')
    end

    it 'to see a post\'s title' do
      expect(page).to have_content('The ephicacy of things')
    end

    it 'to see some of the post\'s body' do
      expect(page).to have_content('Wow the ephicacy of things')
    end

    it 'to see the first comments on a post' do
      expect(page).to have_content('Hi Frank!')
    end

    it 'to see how many comments a post has' do
      click_link 'Tom'
      expect(page).to have_content('Comments: 1')
    end

    it 'to see how many likes a post has' do
      expect(page).to have_content('0')
    end

    it 'When click on a post, it redirects me to that post\'s show page' do
      click_link 'The ephicacy of things'
      expect(page).to have_current_path(user_post_path(@user.id, @post.id))
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
      Comment.create(user: @user, post: @post, text: 'Hi Frank!')
      visit user_post_path(@user.id, @post.id)
    end

    it 'to see the post\'s title' do
      expect(page).to have_selector('img')
    end

    it 'to see who wrote the post' do
      expect(page).to have_content('Tom')
    end

    it 'to see how many comments it has' do
      expect(page).to have_content('1')
    end

    it 'to see how many likes it has' do
      expect(page).to have_content('0')
    end

    it 'to see the post body' do
      expect(page).to have_content('Wow the ephicacy of things')
    end

    it 'to see the username of each commentor' do
      expect(page).to have_content('Tom')
    end

    it 'to see the comment each commentor left' do
      expect(page).to have_content('Hi Frank!')
    end
  end
end
