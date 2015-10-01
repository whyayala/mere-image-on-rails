class WelcomeController < ApplicationController
  def index
  	set_meta_tags title: 'Test Title',
              	  description: 'Mere Image Salon.',
              	  keywords: 'Site, Login, Members'
  end

  def contact
        set_meta_tags title: 'Contact Us',
                  description: 'Mere Image Salon contact page.',
                  keywords: 'Site, Login, Members'
  end

end
