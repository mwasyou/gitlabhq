# Copy this file to 'omniauth.rb' and configure it as necessary.
# The wiki has further details on configuring each provider.

Devise.setup do |config|
  # config.omniauth :github, 'APP_ID', 'APP_SECRET', :scope => 'user,public_repo'

  config.omniauth :ldap,
       :host => 'vat-dc01.atsistemas.lan',
       :base => 'OU=AT,DC=atsistemas,DC=lan',
       :uid => 'sAMAccountName',
       :port => 389,
       :method => :plain,
       :bind_dn => 'CN=apache,OU=AT,DC=atsistemas,DC=lan',
       :password => '12345678'
end
