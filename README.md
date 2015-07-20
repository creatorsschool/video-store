Creators School Sinatra skeleton
================================

This is a very basic setup of a Sinatra app, that already has a model example.

Getting Started
---------------

To get started run the following commands:

```
bundle install
```

Run migrations to update database schema:

```
bundle exec rake db:migrate
```

Running the app
---------------

To run the app we are using [shotgun](https://github.com/rtomayko/shotgun),
which means you can run just by typing `shotgun`.

Add some dummy data to your application. Run `tux` and paste the following code:

```ruby
Video.create(
  title: 'Fight Club',
  year: 1999,
  director: 'David Fincher'
)

Video.create(
  title: 'City of God',
  year: 2002,
  director: 'Fernando Meirelles, Kátia Lund'
)

Video.create(
  title: 'The Prestige',
  year: 2006,
  director: 'Christopher Nolan'
)
```

Feature Request
---------------

Remember to use flash messages to inform the user if the action was a success or error.

### Sort videos

The order buttons on the index page don't work. Make them work.

### Show video details

Create a page to show the details of the video. Like the director.

### Edit videos

Create a page to edit a video and submit the changes.

### Inser videos

Create a page to create a new video.

### Remove videos

Implement the route of removing a video.
