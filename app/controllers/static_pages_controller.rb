class StaticPagesController < ApplicationController
  def home
  end

def contact
    unless params.blank?
      c = ContactForm.new(:name => params["name"],:email => params["email"], :message => params["message"])
      if  c.deliver
        redirect_to root_path
      end
    end
  end
  def about
    render :layout => "landing"
  end
end
