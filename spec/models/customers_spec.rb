require 'spec_helper'

describe Customer do
        it "has a valid factory" do
                FactoryGirl.create(:customer).should be_valid
        end

        it "has a role equal to 0" do
                FactoryGirl.build(:user, role: 0).should be_valid
        end

end
