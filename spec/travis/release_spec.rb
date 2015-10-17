require 'spec_helper'

describe Travis::Release do
  it 'has a version number' do
    expect(Travis::Release::VERSION).not_to be nil
  end

  it 'does something useful' do
    expect(false).to eq(true)
  end
end
