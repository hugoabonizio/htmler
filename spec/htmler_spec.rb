require 'spec_helper'

describe Htmler do
  it "should respond to to_html" do
    obj = Htmler.new
    expect(obj.respond_to? 'to_html'). to be_true
  end
end