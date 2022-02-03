class StaticPagesController < ApplicationController
  def home
    @customers = Customer.all
    @data_to_chart_1 = Reservation.group(:kind).count
  end
end
