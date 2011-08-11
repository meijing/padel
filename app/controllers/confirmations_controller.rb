class ConfirmationsController < ApplicationController
  

  # GET /confirmations/1
  # GET /confirmations/1.xml
  def show
    @confirmation = Confirmation.find_by_code(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @confirmation }
    end
  end

  def do_confirmation
    @confirmation = Confirmation.find_by_code(params[:code])
    @confirmable = @confirmation.confirmable
    if(@confirmation.action =='accept')
      @confirmable.confirm!
    else
      @confirmable.reject!
    end
  end

end
