class ConditionsController < ApplicationController

  def index
    @conditions=Conditions.all
  end

  def search

  end  

  
end  