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

cookbook_file "unicorn_pizza_delivery" do
  path "/etc/init.d/unicorn_pizza_delivery"
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
  cwd '/home/vagrant/pizza_delivery'
  #user 'vagrant'
  command 'bundle update actionpack'
  command 'bundle install'
end

execute 'start-up commands' do
  command 'mkdir -p /home/vagrant/pizza_delivery/shared/pids /home/vagrant/pizza_delivery/shared/sockets /home/vagrant/pizza_delivery/shared/log'
end
#execute 'devise' do
#  cwd '/home/vagrant/project/pizza_delivery'
#  command 'rails g devise:install'
#end

#execute 'setupDB' do
#  command 'echo "CREATE DATABASE mydb; CREATE USER vagrant with password \'password\'; GRANT ALL PRIVILEGES ON DATABASE mydb TO vagrant;" | sudo -u postgres psql'
# end



cookbook_file "pg_hba" do
  path "/etc/postgresql/10/main/pg_hba.conf"
end

execute "restart postgres" do
 command 'service postgresql restart'
end

execute 'setupDB' do
  command 'echo "CREATE DATABASE mydb; CREATE USER vagrant; GRANT ALL PRIVILEGES ON DATABASE mydb TO vagrant;" | sudo -u postgres psql'
 end

execute "createDB" do
  cwd '/home/vagrant/pizza_delivery'
  command 'RAILS_ENV=production rake db:create'
end


 execute 'migrate' do
   cwd '/home/vagrant/pizza_delivery'
   command 'RAILS_ENV=production rake db:migrate'

 end
execute 'precompile' do
  cwd '/home/vagrant/pizza_delivery'
  command 'RAILS_ENV=production rake assets:precompile'
end

execute 'seed' do
  cwd '/home/vagrant/pizza_delivery'
  command 'RAILS_ENV=production rake db:seed'
end

execute 'unicorn' do
	#command 'chmod 755 /etc/init.d/unicorn_pizza_delivery'
	command 'update-rc.d unicorn_pizza_delivery defaults'
end

#execute 'host server' do
#  cwd '/home/vagrant/pizza_delivery'
#  command 'rails server -d -b 0.0.0.0'
#  user 'vagrant'
#end
