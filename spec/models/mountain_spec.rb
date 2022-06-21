require 'rails_helper'

RSpec.describe Mountain, type: :model do
  let!(:mountain) { create(:mountain) }
  
  it '山の名前を取得できる' do
    expect(mountain.name).to include mountain.name
  end
  
  it '季節を取得できる' do
    expect(mountain.season).to include mountain.season
  end
  
  it '食料を取得できる' do
    expect(mountain.food).to include mountain.food
  end
  
end