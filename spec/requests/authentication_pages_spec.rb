require 'spec_helper'
describe "Authentication" do
  	subject { page }
	describe "signin page" do 
		before { visit signin_path }
		it { should have selector('h1',		text: 'Sign in') }
		it { should have selector('title',		text: 'Sign in') }
	end
end
	
