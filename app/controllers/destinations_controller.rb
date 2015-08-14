class DestinationsController < ApplicationController
  #get request that shows our list
  def index
    # render a list.... give a form to "checkoff"a vacay
  end
  #get
  def new
    #displays a form to create a new destination
  end
  #post
  def create
    #handle the form submission and add to database
  end
  #post
  def update
    #lets a user check off a vacay from index
  end
  #patch
  def delete
    #lets a user delete a vacay IF they have NOT checked it off..
    #otherwise.....they can't, youve already been there!
  end
  #get
  def confirmation
    #cast all confirmation
  end
end
