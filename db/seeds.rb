User.delete_all
puts "All users deleted"

users = [
  {
    name: "Jeremy Dinh",
    email: "jeremy.dinh@bluecore.com",
    slack_id: "UFB9CRS4W",
    status: "active",
    escalated: true
  },{
    name: "Marvin Clerge",
    email: "marvin.clerge@bluecore.com",
    slack_id: "UFDEHJXJM",
    status: "late",
    escalated: false
  },{
    name: "Jarno Veldhuis",
    email: "jveldhuis@bluecore.com",
    slack_id: "UPEMUFVLJ",
    status: "off",
    escalated: false
  },{
    name: "James Lee",
    email: "jlee@bluecore.com",
    slack_id: "UQ181K65C",
    status: "off",
    escalated: false
  }
]

users.each do |user|
  User.create(
    name: user[:name],
    email: user[:email],
    slack_id: user[:slack_id],
    status: user[:status],
    escalated: user[:escalated]
  )
  
  puts "#{user[:name].split(' ')[0]} created"
end