require 'spec_helper'

RSpec.describe Item, type: :model do
  it {should respond_to :id}
  it {should respond_to :title}
  it {should respond_to :image_url}
  it {should respond_to :reviews_count}
  # it "has a valid factory" do
  #   expect(FactoryGirl.create(:item)).to be_valid
  # end

end
