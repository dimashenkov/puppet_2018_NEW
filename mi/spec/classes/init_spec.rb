require 'spec_helper'
describe 'mi' do
  context 'with default values for all parameters' do
    it { should contain_class('mi') }
  end
end
