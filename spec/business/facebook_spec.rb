# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Facebook do
  context 'facebook' do
    let(:facebook_statuses) { Facebook.new.take_statuses[0] }
    it 'facebook take statuses' do
      expect(facebook_statuses).to have_key('name')
    end
  end
end
