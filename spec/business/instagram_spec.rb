# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Instagram do
  context 'Instagram' do
    let(:instagram_photos) { Instagram.new.take_photos[0] }
    it 'Instagram take photos' do
      expect(instagram_photos).to have_key('username')
    end
  end
end
