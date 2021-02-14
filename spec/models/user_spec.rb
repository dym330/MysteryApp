require 'rails_helper'

RSpec.describe User, type: :model do

  before do
    @user = User.new
  end

  context "入力制限" do
    it "名前の空白禁止" do
      expect(@user).not_to be_valid
    end
  end
end
