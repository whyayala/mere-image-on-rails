module ControllerMacros
  def login_customer
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:customer]
      sign_in FactoryGirl.create(:customer)
    end
  end
  def login_specialist
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:specialist]
      sign_in FactoryGirl.create(:specialist)
    end
  end
  def login_manager
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:manager]
      sign_in FactoryGirl.create(:manager)
    end
  end
end
