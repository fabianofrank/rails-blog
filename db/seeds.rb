# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
first_user = User.create(name: 'Frank', photo: 'https://unsplash.com/photos/1CORKh7x6Z4', bio: 'Engineer from Brazil. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed in mi ac lacus fermentum malesuada at non nunc. Ut posuere enim sit amet justo euismod pulvinar. Maecenas tempor varius nibh. Aliquam lacinia, eros vel euismod vestibulum, tortor mi placerat ex, eget lacinia nunc turpis sit amet dolor. Nullam vel lectus in lorem elementum pretium et id mi. Donec sed quam pulvinar, vestibulum elit non, dapibus nisl. Proin ornare cursus auctor. Maecenas eget consequat eros, sed ultrices nibh. Praesent non neque rhoncus, luctus elit quis, aliquet velit.')

second_user = User.create(name: 'Lilly', photo: 'https://unsplash.com/photos/oXwj5zgA7JI', bio: 'Teacher from Poland. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed in mi ac lacus fermentum malesuada at non nunc. Ut posuere enim sit amet justo euismod pulvinar. Maecenas tempor varius nibh. Aliquam lacinia, eros vel euismod vestibulum, tortor mi placerat ex, eget lacinia nunc turpis sit amet dolor. Nullam vel lectus in lorem elementum pretium et id mi. Donec sed quam pulvinar, vestibulum elit non, dapibus nisl. Proin ornare cursus auctor. Maecenas eget consequat eros, sed ultrices nibh. Praesent non neque rhoncus, luctus elit quis, aliquet velit.')

third_user = User.create(name: 'Francis', photo: 'https://unsplash.com/photos/bhPJ7-AdgFE', bio: 'Tech lead and mother. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed in mi ac lacus fermentum malesuada at non nunc. Ut posuere enim sit amet justo euismod pulvinar. Maecenas tempor varius nibh. Aliquam lacinia, eros vel euismod vestibulum, tortor mi placerat ex, eget lacinia nunc turpis sit amet dolor. Nullam vel lectus in lorem elementum pretium et id mi. Donec sed quam pulvinar, vestibulum elit non, dapibus nisl. Proin ornare cursus auctor. Maecenas eget consequat eros, sed ultrices nibh. Praesent non neque rhoncus, luctus elit quis, aliquet velit.')

fourth_user = User.create(name: 'Laura', photo: 'https://unsplash.com/photos/iiqAj5NYYCo', bio: 'Teacher from Argentina. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed in mi ac lacus fermentum malesuada at non nunc. Ut posuere enim sit amet justo euismod pulvinar. Maecenas tempor varius nibh. Aliquam lacinia, eros vel euismod vestibulum, tortor mi placerat ex, eget lacinia nunc turpis sit amet dolor. Nullam vel lectus in lorem elementum pretium et id mi. Donec sed quam pulvinar, vestibulum elit non, dapibus nisl. Proin ornare cursus auctor. Maecenas eget consequat eros, sed ultrices nibh. Praesent non neque rhoncus, luctus elit quis, aliquet velit.')

first_post = Post.create(user: first_user, title: 'Hello friends!', text: 'Sed ut nibh maximus, luctus justo quis, pellentesque diam. Curabitur ultrices libero id tempus feugiat. Aenean in mi id ipsum hendrerit suscipit scelerisque et nulla.')

second_post = Post.create(user: first_user, title: 'YOW!', text: 'Fusce vel leo nulla. Morbi sit amet ornare metus, a efficitur turpis. Aenean hendrerit leo a urna imperdiet, sit amet egestas enim convallis. Duis dictum ex enim, quis varius metus convallis in.')

third_post = Post.create(user: first_user, title: '1, Two, 010', text: 'Morbi sed felis euismod, mattis sapien non, vulputate mauris. Phasellus quis est dolor.')

fourth_post = Post.create(user: second_user, title: 'Do you like three?', text: 'Nam orci odio, eleifend et dictum id, sodales at libero. Vestibulum eget sagittis magna, vel ornare odio.')

fifth_post = Post.create(user: fourth_user, title: 'It is not Britney', text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed in mi ac lacus fermentum malesuada at non nunc.')

Comment.create(user: second_user, post: first_post, text: 'Hi Frank!')
Comment.create(post: first_post, user: first_user, text: 'Yow Lily!')
Comment.create(post: first_post, user: second_user, text: 'I have lost your number, could you send me again?')
Comment.create(post: first_post, user: first_user, text: 'Yes, we have a lot to catch up...')
Comment.create(post: first_post, user: second_user, text: 'Definitely, I will call you asap')
Comment.create(post: first_post, user: first_user, text: 'I will be waiting :)' )

Comment.create(post: second_post, user: second_user, text: 'AMIGO!')
Comment.create(post: second_post, user: first_user, text: 'Heeey Lily!')
Comment.create(post: second_post, user: second_user, text: 'I have lost your number, could you send me again?')
Comment.create(post: second_post, user: first_user, text: 'Yes, we have a lot to catch up...')
Comment.create(post: second_post, user: second_user, text: 'Definitely, I will call you asap')
Comment.create(post: second_post, user: first_user, text: 'I will be waiting :)' )

Comment.create(post: third_post, user: second_user, text: 'Friend!')
Comment.create(post: third_post, user: first_user, text: 'Hey Lily!')
Comment.create(post: third_post, user: second_user, text: 'I have lost your number, could you send me again?')
Comment.create(post: third_post, user: first_user, text: 'Yes, we have a lot to catch up...')
Comment.create(post: third_post, user: second_user, text: 'Definitely, I will call you asap')
Comment.create(post: third_post, user: first_user, text: 'I will be waiting :)' )

Comment.create(post: fourth_post, user: third_user, text: 'Hi Lilly!')
Comment.create(post: fourth_post, user: second_user, text: 'Hey Francis!')
Comment.create(post: fourth_post, user: third_user, text: 'I have lost your number, could you send me again?')
Comment.create(post: fourth_post, user: second_user, text: 'Yes, we have a lot to catch up...')
Comment.create(post: fourth_post, user: third_user, text: 'Definitely, I will call you asap')
Comment.create(post: fourth_post, user: second_user, text: 'I will be waiting :)' )

Comment.create(post: fifth_post, user: third_user, text: 'Hi Laura!')
Comment.create(post: fifth_post, user: fourth_user, text: 'Hey Francis!')
Comment.create(post: fifth_post, user: third_user, text: 'I have lost your number, could you send me again?')
Comment.create(post: fifth_post, user: fourth_user, text: 'Yes, we have a lot to catch up...')
Comment.create(post: fifth_post, user: third_user, text: 'Definitely, I will call you asap')
Comment.create(post: fifth_post, user: fourth_user, text: 'I will be waiting :)' )