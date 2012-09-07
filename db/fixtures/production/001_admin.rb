admin = User.create(
  :email => "oficina.tecnica@atsistemas.com",
  :name => "Oficina Tecnica",
  :username => "ot",
  :password => "temporal",
  :password_confirmation => "temporal"
)

admin.projects_limit = 10000
admin.admin = true
admin.save!

if admin.valid?
puts %q[
Administrator account created:

login.........ot
password......temporal
]
end
