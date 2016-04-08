class ConditionsController < ApplicationController


  def index
    @conditions=Conditions.all
  end

  
end  