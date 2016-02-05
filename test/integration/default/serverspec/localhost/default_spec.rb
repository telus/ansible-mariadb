require 'spec_helper'

describe 'ansible-mariadb::default' do

  describe package('mariadb-server') do
    it { should be_installed.by('apt') }
  end

  describe package('python-mysqldb') do
    it { should be_installed.by('apt') }
  end

  describe package('mariadb-client') do
    it { should be_installed.by('apt') }
  end

  describe package('p7zip-full') do
    it { should be_installed.by('apt') }
  end

  describe file('/var/run/mysql') do
    it { should be_directory }
    it { should be_owned_by 'mysql' }
    it { should be_grouped_into 'mysql' }
    it { should be_mode 775 }
  end

  describe file('/etc/mysql/my.cnf') do
    it { should exist }
  end

  describe service('mariadb') do
    it { should be_installed }
    it { should be_running }
  end

  describe file('/data/backup/mariadb') do
    it { should be_directory }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'staff' }
    it { should be_mode 775 }
  end

end
