require 'spec_helper'

describe WelcomeController do

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end
  end

end
