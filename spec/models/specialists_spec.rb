require 'spec_helper'

describe Specialist do
        it "has a valid factory" do
                FactoryGirl.create(:specialist).should be_valid
        end

        it "has a role equal to 1" do
                FactoryGirl.build(:user, role: 1).should be_valid
        end

end

