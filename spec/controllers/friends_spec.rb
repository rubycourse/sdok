require 'spec_helper'

describe FriendsController do
  context "supports a JSON test" do
    it 'can get a JSON hash back' do
      get :perfect_strangers, {name: 'larry'}
      expect(JSON.parse(response.body)["cousin"]).to eq "Balki"
    end
  end
end
