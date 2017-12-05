class CalEvent < ApplicationRecord
  attr_accessor :title, :start, :end

  def initialize(attributes = {})
    @title  = attributes[:title]
    @start = attributes[:start]
    @end = attributes[:end]
  end
end
