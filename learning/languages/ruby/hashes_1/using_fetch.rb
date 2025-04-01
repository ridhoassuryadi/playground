team = {:name => "crm", :members => ["ridho", "yoan"]}
p team

p team.fetch(:project, "property not found")