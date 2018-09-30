# Bloccit

 A [Reddit](http://www.reddit.com/) replica where people can post, vote on, share and save links and comments. Bloccit will have many features needed to make it a cool web app.

 ![Bloccit Topic](../master/screenshots/bloccit_topic.png)

## Configuration
### Mac and Linux Users

Most tools related to Ruby on Rails (commonly referred to as "Rails") are optimized for Unix-based operating systems, like OS X and Linux. If you are using a Unix-based operating system, we advise you to create a local developer environment. This means you'll install software on your computer, and won't use a virtual machine or a cloud service.

Because many installation instructions are dependent on the version of your OS, I'll refer you to the instructions on [Install Rails](http://installrails.com/), which will provide you with customized installation steps. Follow the instructions, stopping at the section on Sublime Text.

### Windows Users

While it's possible to install Rails on a Windows computer, it is much more difficult. Installation bugs on Windows are highly unpredictable and can take many hours to fix - often incompletely. This is not the sort of frustration you want when you're just getting started.

As a consequence, I suggest using Cloud9, which is a browser-based development environment. You can quickly set up a free account with Cloud9. Cloud9 allows you to easily log in, edit, save, and collaborate on code. I strongly advise people on Windows computers to get started with Cloud9.

For now, go to [c9.io](https://c9.io/) and sign up for a free account to use Cloud9. Once logged in, follow these steps to create a new workspace:

  1. Click the "Create a new workspace" button.
  2. Name your project "bloccit". Leave the Description field blank.
  3. Choose "Public" for the git repository options. Leave the Clone from Git or Mercurial URL field blank.
  4. Choose the "Rails/Ruby" template from the options below.
  5. Click the "Create workspace" button.

### Pull Down the Code

  Start by cloning the repository:

  ```
  $ git clone https://github.com/duyhong/bloccit.git <your-project-name>
  ```

### Reset Git

   This will be your personal application. So all of the past commit history that I used to build this  app aren't needed. Also you will want to be able to push/pull code from your personal remote (Github) repository and NOT my remote (Github) repository.

   Remove the existing local Git repository:

   ```
   $ rm -r -f .git
   ```

## Run the Application

 You  must update the application with  `bundle install`

 ```
 $ bundle install
 ```
 This command installs everything specified in the Gemfile and ensures that all of the gems work harmoniously.

## Usage

 Start the Rails server from your command line:
 ```
 $ rails s
 ```
 The server will start up. To stop the server, press `ctrl + c`.

 One the rails server started, you can open your browser and access Bloccit at localhost:3000

 ![Bloccit Topic](../master/screenshots/bloccit.png)
