require 'spec_helper'
require 'travis/release'

module Travis
  RSpec.describe Release do
    it 'renders version' do
      expect(subject).to respond_to(:version)
    end
  end
end
