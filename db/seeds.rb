# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

issues = Issue.create([
  {title: "Issue 1", body: "This is issue 1"},
  {title: "Issue 2", body: "This is issue 2"}
])

Comment.create([
  { body: "Comment on issue 1", issue: issues[0] }, 
  { body: "Another comment on issue 1", issue:  issues[0] }
])
