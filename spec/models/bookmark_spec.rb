require 'spec_helper'

describe Bookmark do

  before { @bookmark = Bookmark.new(name: "Example Bookmark", url: "http://example.com") }

  subject { @bookmark }

  it { should respond_to(:url) }
  it { should respond_to(:name) }
  
  it { should be_valid }

  describe "when name is not present" do
    before { @bookmark.name = " " }
    it { should_not be_valid }
  end
  
    describe "when name is too long" do
    before { @bookmark.name = "a" * 51 }
    it { should_not be_valid }
    end
  

  describe "when url is not present" do
    before { @bookmark.url = " " }
    it { should_not be_valid }
  end

    describe "when url format is invalid" do
    it "should be invalid" do
      addresses = %w[foo,com user_at_foo-org example.user@foo.
                     foo@bar_baz.com foo@bar+baz.com]
      addresses.each do |invalid_address|
        @bookmark.url = invalid_address
        @bookmark.should_not be_valid
      end      
    end
  end

  describe "when url format is valid" do
    it "should be valid" do
      addresses = %w[foo.COM A_US-ERf.b.org foo.jp baz.cn]
      addresses.each do |valid_address|
        @bookmark.url = valid_address
        @bookmark.should be_valid
      end      
    end
  end
  
  
  
end
