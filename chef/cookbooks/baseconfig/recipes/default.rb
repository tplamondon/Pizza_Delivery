# Make sure the Apt package lists are up to date, so we're downloading versions that exist.
cookbook_file "apt-sources.list" do
  path "/etc/apt/sources.list"
end
execute 'apt_update' do
  command 'apt-get update'
end

# Base configuration recipe in Chef.
package "wget"
package "ntp"

cookbook_file "ntp.conf" do
  path "/etc/ntp.conf"
end
execute 'ntp_restart' do
  command 'service ntp restart'
end

# Rails stuff
# base configuration for rails
package 'ruby-dev'
package 'sqlite3'
package 'libsqlite3-dev'
package 'zlib1g-dev'
package 'nodejs'
package 'build-essential'


execute 'bundler install' do
  command 'sudo gem install bundler'
end

execute 'install rails' do
  command 'sudo gem install rails'
end

execute 'bundle' do
  cwd '/home/vagrant/project/pizza_delivery'
  #user 'vagrant'
  command 'bundle update actionpack'
  command 'bundle install'
end

#execute 'devise' do
#  cwd '/home/vagrant/project/pizza_delivery'
#  command 'rails g devise:install'
#end

execute 'migrate' do
  cwd '/home/vagrant/project/pizza_delivery'
  #user 'vagrant'
  command 'rake db:migrate'
end


execute 'host server' do
  cwd '/home/vagrant/project/pizza_delivery'
  command 'rails server -d -b 0.0.0.0'
  #user 'vagrant'
end
