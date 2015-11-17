require 'spec_helper'

describe Website::Status do
  it 'has a version number' do
    expect(Website::Status::VERSION).not_to be nil
  end

  it 'does something useful' do
    expect(false).to eq(true)
  end
end
