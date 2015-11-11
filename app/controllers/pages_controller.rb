class PagesController < ApplicationController

  def home
    @debtors =  NdcService.all_debtors
  end

end
