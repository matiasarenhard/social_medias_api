require 'rails_helper'

RSpec.describe Twitter do
  context 'Twitter' do
    let(:twitter_take_twitters) {Twitter.new.take_twitters[0]}
    it 'Twitter take twitters' do
      expect(twitter_take_twitters).to have_key('username')
    end
  end
end
