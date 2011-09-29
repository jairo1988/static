class PagesController < ApplicationController

  #def home
   # @title = "Home"
  #end
  describe "GET 'home'" do
  it "should be successful" do
    get 'home'
    response.should be_success
  end
  end

  def contact
    @title = "Contact"
  end

  def about
    @title = "About"
  end
end
