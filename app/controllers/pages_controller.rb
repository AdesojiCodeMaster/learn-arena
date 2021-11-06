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
    respond_to do |format|
      format.html { render :contact }
    end
  end
end
