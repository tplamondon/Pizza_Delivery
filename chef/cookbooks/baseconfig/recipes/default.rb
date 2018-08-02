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
package "postgresql"
package "ack-grep"

cookbook_file "ntp.conf" do
  path "/etc/ntp.conf"
end

package "nginx"
cookbook_file "nginx-default" do
  path "/etc/nginx/sites-available/default"
end

cookbook_file "unicorn_rails" do
  path "/etc/init.d/unicorn_rails"
end

execute 'ntp_restart' do
  command 'service ntp restart'
end
execute 'nginx_restart' do
  command 'service nginx restart'
end

# Rails stuff
# base configuration for rails
package 'ruby-dev'
package 'sqlite3'
package 'libsqlite3-dev'
package 'zlib1g-dev'
package 'nodejs'
package 'build-essential'
package 'libpq-dev'


execute 'setupDB' do
  command 'echo "CREATE DATABASE mydb; CREATE USER vagrant with password \'password\'; GRANT ALL PRIVILEGES ON DATABASE mydb TO vagrant;" | sudo -u postgres psql'
 end

execute 'gem install' do
  command 'gem update --system'
end

execute 'bundler install' do
  command 'gem install bundler'
end

#execute 'install rails' do
#  command 'sudo gem install rails'
#end

execute 'bundle' do
  cwd '/home/vagrant/project/pizza_delivery'
  #user 'vagrant'
  command 'bundle update actionpack'
  command 'bundle install'
end

execute 'unicorn' do
	#command 'chmod 755 /etc/init.d/unicorn_appname'
	command 'update-rc.d unicorn_rails defaults'
end

#execute 'devise' do
#  cwd '/home/vagrant/project/pizza_delivery'
#  command 'rails g devise:install'
#end

#execute 'setupDB' do
#  command 'echo "CREATE DATABASE mydb; CREATE USER vagrant with password \'password\'; GRANT ALL PRIVILEGES ON DATABASE mydb TO vagrant;" | sudo -u postgres psql'
# end

execute 'migrate' do
  cwd '/home/vagrant/project/pizza_delivery'
  command 'rake db:migrate'
end


execute 'host server' do
  cwd '/home/vagrant/project/pizza_delivery'
  command 'rails server -d -b 0.0.0.0'
  user 'vagrant'
end

execute 'seed' do
  cwd '/home/vagrant/project/pizza_delivery'
  command 'rake db:seed'
end
