# Blog App

A **Blog app** similar classic blog website. With fully functional website that show the list of posts and empower readers to interact with them by adding comments and liking posts.
 - **User**
 - **Post**
 - **Comment**
 - **Like** 

## Screenshots
![space_mock4](https://user-images.githubusercontent.com/68971295/196533102-f64c38c1-2001-4d2c-b261-3e24b5cd09b2.png)
![blog_mock1](https://user-images.githubusercontent.com/68971295/196532663-30ddc02d-0050-4569-ba80-20c536f63462.png)
![space_mock2](https://user-images.githubusercontent.com/68971295/196532614-6ef01be3-f741-457c-830d-4f7261f1c18d.png)



Everything was based on the ERD class diagram presented below. 

</br>
 <div align="center">
    <img alt="gif" src="./public/blog_app_erd.png" width=50% />
    <p>Entity Relationship Diagram (ERD) of Blog App project</p>
</div>

## Getting Started
To run the project locally, copy up and running follow these simple example steps :

 - First of all make sure you have both `Ruby` & `Rails` installed in your machine
 (else You can install `Rails` just with this simple command  ```gem install rails```)
 - clone the project with the following command line : 
```
$ git clone git@github.com:fabianofrank/rails-blog-app.git
```
 - Then go to the right folder 
```
$ cd rails-blog-app
```
```
$ bundle
```
and run to install npm package
```
$ npm install
```

make sure the database is up and running.
```
$ rails db:create
```
When you will add migration file then, you can add command like
```
$ rails db:migrate
```
Run this command line to add some dummy data
```
$ rails db:seed
```

 - Finaly run `rails s` and visit http://localhost:3000/  in your browser!

 ## Run tests :

 To run Request specs locally you need just to run this following command in your terminal :

 ```
 $ bundle exec rspec
 ```
 <!-- </br>
 <div align="center">
    <kbd>
    <img alt="gif" src="https://user-images.githubusercontent.com/80895497/144337923-8f5660a0-6e8a-4ba4-99a5-c6ab42bb3b73.png" width=90% />
    <p>16 Request Specs passed</p>
       </kbd>
</div> -->

## Built With

 - Ruby on RAils  <img src="https://cdn.emojidex.com/emoji/seal/Ruby.png" width=15px>
 - PostgreSQL <img src="https://user-images.githubusercontent.com/80895497/142954032-f7072df9-3586-48f9-a9e0-7fdd284eb833.png" width=15px>
</br>

## Author

👤 **Fabiano Frank**

- GitHub: [@fabianofrank](https://github.com/fabianofrank)
- Twitter: [@fabianofrankk](https://twitter.com/fabianofrankk)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/fabianofrank/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/fabianofrank/rails-blog-app/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Inspiration 💘
- Microverse program ⚡
- My standup team 😍
- My family's support 🙌
- MicroBros 😜

## 📝 License

This project is [MIT](https://github.com/fabianofrank/rails-blog-app/blob/develop/LICENSE.md) licensed.

<!-- rails generate migration CreatePosts author_id:bigint title:string text:text comments_counter:integer likes_counter:integer -->

<!-- rails generate migration CreateUsers name:string photo:string bio:text posts_counter:integer  -->

<!-- rails generate migration CreateCommetns author_id:bigint post_id:bigint text:text  -->

<!-- rails generate migration CreateLikes author_id:bigint post_id:bigint-->

<!-- rails db:migrate:redo STEP=3 -->
