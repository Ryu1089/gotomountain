require 'rails_helper'

RSpec.describe Mountain, type: :model do
  let!(:mountain) { create(:mountain) }
 
  
  it '山の名前を取得できる' do
    expect(mountain.name).to include mountain.name
  end
  

end