require 'rails_helper'

RSpec.describe User, type: :model do
  let!(:user) { create(:user) }
  
  it 'ユーザーネームを取得できる' do
  expect(user.username).to include user.username
  end
  
  it 'メールアドレスを取得できる' do
  expect(user.email).to include user.email
  end
  
  it 'パスワードを取得できる' do
  expect(user.password).to include user.password
  end
end