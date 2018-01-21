package 'httpd' 

remote_file '/var/www/html/google.png' do 

source 'https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png' 
end

template '/var/www/html/index.html' do
 source 'index.erb'
 action :create
end

#cookbook_file '/var/www/html/index.html' do
#  source 'index.html'
#end

service 'httpd' do
  action [:enable, :start]
end
