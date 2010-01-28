require File.join(File.dirname(__FILE__), '..', 'spec_helper.rb')

describe "/ideas" do
  before(:each) do
    @response = request("/ideas")
  end
end