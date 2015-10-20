require 'spec_helper'

describe WelcomeController do
  context 'user is not logged in' do
    describe "GET 'contact'" do
      it "returns http success" do
        get 'contact'
        response.should be_success
      end
    end
    describe "GET 'index'" do
      it "returns http success" do
        get 'index'
        response.should be_success
      end
    end
  end
end
