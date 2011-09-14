require 'active_model'

class SearchQaery 
  include ActiveModel::Validations
  include ActiveModel::Conversion
  def persisted?
     false
  end

  validates_presence_of :start_date,:end_date

  attr_accessor :start_date,:end_date,:comment,:title

# how  can I get paramete date ??
# TODO

#  def initialize(params = nil)
#    return unless params
#    p params
#    p "hoge"
#    p params[:comment]
#    self.start_date = params[:start_date]
#    self.end_date = params[:end_date]
##    self.comment = params[:comment]
#    p "hoge"
#  end

  def print()
    str = start_date.to_s + " " + end_date.to_s + " " + comment.to_s
  end
end
