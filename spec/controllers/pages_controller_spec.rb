require 'spec_helper'

describe PagesController do

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'wiki1'" do
    it "returns http success" do
      get 'wiki1'
      response.should be_success
    end
  end

  describe "GET 'wiki2'" do
    it "returns http success" do
      get 'wiki2'
      response.should be_success
    end
  end

end
