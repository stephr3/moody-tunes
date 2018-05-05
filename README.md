#  Moody Tunes
## *By Halle Williams & Stephanie Roth*

_With this application, a user can search for an artist's top tracks, click on a track, and view a visual analysis of the track's qualities, including energy, speechiness, acousticness, happiness, and danceability. The user can also listen to a preview of the song._

## Technologies Used

* **Application**: *Ruby on Rails 5*<br>
* **Testing**: *Rspec, Capybara*<br>
* **Database**: *Postgres, ActiveRecord*
* **APIs**: *Spotify*

Installation
------------

Install *Moody Tunes* by cloning the repository.  
```
$ git clone https://github.com/stephr3/moody-tunes
```

Check to make sure ruby and rails are installed on your machine.  
```
$ ruby -v
$ rails -v
```
If they are not installed, please follow instructions [here](http://guides.rubyonrails.org/getting_started.html#installing-rails) to install ruby on rails.

Install required gems:
```
$ bundle install
```

Run Postgres:
```
$ postgres
```

Navigate to project file and migrate database:
```
$ rake db: create
$ rake db: migrate
```

Start the Rails webserver:
```
$ rails server
```

Navigate to `localhost:3000` in your browser of choice.

You can also visit [Moody Tunes on Heroku](http://moody-tunes.herokuapp.com)

Bugs
-------
If you are enjoying the Heroku site on a mobile device, you may need to flip the orientation of the phone one to two times to see the full visual chart.

License
-------
_This software is licensed under the MIT license._<br>
Copyright (c) 2016 **Stephanie Roth & Halle Williams**
