require 'rails_helper'

describe Post do

  before :each do
    @post = create(:post)
  end
  
  describe "#new" do
    it "takes 4 params and returns Post object" do
      expect(@post).to be_an_instance_of Post
    end
  end

end