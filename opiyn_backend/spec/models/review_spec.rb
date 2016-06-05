require 'spec_helper'

RSpec.describe Review, type: :model do
  it {should respond_to :id}
  it {should respond_to :content}
  it {should respond_to :item_id}
  it "has a valid factory" do
    expect(FactoryGirl.create(:review)).to be_valid
  end
end
