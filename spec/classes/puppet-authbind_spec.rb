require 'spec_helper'

RSpec.configure do |c|
  c.default_facts = {
    :osfamily         => 'Debian',
    :operatingsystem  => 'Ubuntu',
    :lsbdistid        => 'Ubuntu',
    :lsbdistcodename  => 'trusty',
  }
end

describe 'authbind' do
  context 'none' do
    it { should compile }
  end
end

at_exit { RSpec::Puppet::Coverage.report! }
