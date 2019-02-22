require 'spec_helper'
require 'json'
require './app/services/converse_service'
 
describe 'Currency' do
  it 'converse' do
    amount = rand(0..9999)
    res = ConverseService.new("USD", "BRL", amount).perform
    expect(res.is_a? Numeric).to eql(true)
    expect(res != 0 || amount == 0).to eql(true)
  end
end