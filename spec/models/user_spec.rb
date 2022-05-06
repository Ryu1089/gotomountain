require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { create(:user) }
  it 'レスポンスステータスコードが200になること' do
    get new_user_path
    expect(response).to have_http_status(200)
  end
end