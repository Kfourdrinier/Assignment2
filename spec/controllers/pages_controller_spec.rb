require 'spec_helper'

describe PagesController do
 render_views

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'biography'" do
    it "returns http success" do
      get 'biography'
      response.should be_success
    end
  end

  describe "GET 'filmography'" do
    it "returns http success" do
      get 'filmography'
      response.should be_success
    end
  end
  
  describe "GET 'best'" do
    it "returns http success" do
      get 'best'
      response.should be_success
    end
  end
  
  describe "Make a test for the Home Page" do

	it "has good title" do
		get 'home'
		response.should have_selector("title", :content => "Jim Carrey - Wiki")
	end

	it "has header" do
		get 'home'
		response.should have_selector("header")
	end

	it "has nav" do
		get 'home'
		response.should have_selector("nav")
	end
end

describe "Make a test for the First Page" do

	it "has good title" do
		get 'biography'
		response.should have_selector("title", :content => "Jim Carrey - Wiki")
	end

	it "has header" do
		get 'biography'
		response.should have_selector("header")
	end

	it "has nav" do
		get 'biography'
		response.should have_selector("nav")
	end
end

describe "Make a test for the Second Page" do

	it "has good title" do
		get 'filmography'
		response.should have_selector("title", :content => "Jim Carrey - Wiki")
	end

	it "has header" do
		get 'filmography'
		response.should have_selector("header")
	end

	it "has nav" do
		get 'filmography'
		response.should have_selector("nav")
	end
end

describe "Make a test for the Third Page" do

	it "has good title" do
		get 'best'
		response.should have_selector("title", :content => "Jim Carrey - Wiki")
	end

	it "has header" do
		get 'best'
		response.should have_selector("header")
	end

	it "has nav" do
		get 'best'
		response.should have_selector("nav")
	end
end

describe "Test all routes for wiki" do

	it "routes to home" do
		expect(:get => "/").to route_to(:controller => "pages", :action => "home")
	end

	it "routes to the first page" do
		expect(:get => "/pages/biography").to route_to(:controller => "pages", :action => "biography")
	end

	it "routes to the second page" do
		expect(:get => "/pages/filmography").to route_to(:controller => "pages", :action => "filmography")
	end
	
	it "routes to the third page" do
		expect(:get => "/pages/best").to route_to(:controller => "pages", :action => "best")
	end
end

end