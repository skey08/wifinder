# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Workspace.destroy_all


workspace = Workspace.create ([
  {name: "Starbucks", address: "1425 P St NW, Washington, DC 20005", category: "Cofee Shop", company_url: "http://www.starbucks.com/", image_url: "https://lh4.ggpht.com/m0b74lPyYDhg_pxyBQMEeYU6hBbLBPuzyLHjCErYtJDn5Oy4nsnVsGlSZyXFj9XTrPU=w300", hours: "5:30am-10pm", wifi: "Available to all patrons"},
  {name: "Shaw Neighborhood Library", address: "1630 7th St NW, Washington, DC 20001", category: "Library", company_url: "http://dclibrary.org/", image_url: "http://dclibrary.org/sites/default/files/DCPL%20Foundation%20Logo_8.gif", hours: "9:30am- 9P:00pm", wifi: "A library card is not needed" },
  {name: "Panera Bread", address: "1350 Connecticut Ave NW, Washington, DC 20036", category: "Cafe", company_url: "https://www.panerabread.com/en-us/home.html", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtAqp5_oVEJF9nsJcl3PIuiMpgkNSTT5Wd3P-YmA8zNFOH7DWG-w", hours: "6am- 10pm",  wifi: "Restricted to 30mins during lunch"},
  {name: "Georgetown University", address: "37th and O Streets, N.W., Washington D.C. 20057", category: "University Commons", company_url: "http://www.georgetown.edu/", image_url: "https://upload.wikimedia.org/wikipedia/commons/c/c7/Healy_Hall_at_Georgetown_University.jpg", hours: "24/7", wifi: "Guess access available throughout campus" },
  ])
