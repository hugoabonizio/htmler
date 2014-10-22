require 'spec_helper'

describe Htmler do
  before do
    @htmler = Htmler.new
  end
  it "should respond to to_html" do
    
    expect(@htmler.respond_to? 'to_html'). to be_true
  end
  
  it "should compile a string" do
    @htmler.compile('html { head { title { "lol" } } }')
    expect(@htmler.to_html).to eql('<html><head><title>lol</title></head></html>')
  end
  
  it "should compile a file" do
    @htmler.compile_file('spec/files/simple_html_head_title.htmler')
    expect(@htmler.to_html).to eql('<html><head><title>lol</title></head></html>')
  end
end