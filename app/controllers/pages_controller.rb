class PagesController < ApplicationController
  def about
    respond_to do |format|
    format.html { render :about }
    end
  end

  def product
    respond_to do |format|
      format.html { render :product }
    end
  end

  def policy
    respond_to do |format|
      format.html { render :policy }
    end
  end

  def term
    respond_to do |format|
      format.html { render :term }
    end
  end

  def faq
    respond_to do |format|
      format.html { render :faq}
    end
  end

  def contact
    @contact = Pages.new(params[:pages])
    respond_to do |format|
      format.html { render :contact }
    end
  end

  def create
    @contact = Pages.new(params[:pages])
    @contact.request = request
    respond_to do |format|
      if @contact.deliver
        # re-initialize Pages object for cleared form
        @contact = Pages.new
        format.html { render 'contact'}
        format.js   { flash.now[:success] = @message = "Thank you for your message. I'll get back to you soon!" }
      else
        format.html { render 'contact' }
        format.js   { flash.now[:error] = @message = "Message did not send." }
      end
    end
  end


end
