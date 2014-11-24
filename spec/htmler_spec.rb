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
  
  it "should parse a more complex file" do
    @htmler.compile_file('spec/files/moderate1.htmler')
    expect(@htmler.to_html).to eql('<html><head><title>Hello world!</title></head><body><header><h1>Site title</h1></header><div><div><p>From the FIRST div</p></div><div><p>From the SECOND div</p><p>...and another one</p></div></div></body></html>')
  end
  
  it "should include arguments" do
    @htmler.compile_file('spec/files/attributes.htmler')
    expect(@htmler.to_html).to eql('<html lang="pt-BR"><body><input type="text" value="value">Green text</input></body></html>')
  end
end