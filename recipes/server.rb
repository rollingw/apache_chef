package 'httpd' 
file '/var/www/html/index.html' do
	content "<h1> Hello World </h1>
<br>hostname: #{node['hostname']}<br>
memory: #{node['memory']}"
end

service 'httpd' do
  action [:enable, :start]
end
