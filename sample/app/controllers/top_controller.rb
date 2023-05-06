class TopController < ApplicationController
  def index
    render file: "#{Rails.root}/public/build/index.html", layout: false
  end
end
