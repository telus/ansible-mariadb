require 'spec_helper'

describe 'ansible-mariadb::default' do

  describe package('mariadb-server') do
    it { should be_installed.by('apt') }
  end

  describe package('python-mysqldb') do
    it { should be_installed.by('apt') }
  end

  describe service('mysqld') do
    it { should be_enabled }
    it { should be_running }
  end

  describe file('/var/run/mysql') do
    it { should be_directory }
    it { should be_owned_by 'mysql' }
    it { should be_grouped_into 'staff' }
  end
end
