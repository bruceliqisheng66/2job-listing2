class WelcomeController < ApplicationController
  def index
    flash[:notice] = '欢迎来到家教招聘网'
  end
end
