# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

founder = Hierarchy.create(name: 'founder')
ceo = Hierarchy.create(name: 'CEO', parent: founder)
cto = Hierarchy.create(name: 'CTO', parent: founder)
marketing_head = Hierarchy.create(name: 'Head of Marketing', parent: ceo)
finance_head = Hierarchy.create(name: 'Head of Finance', parent: ceo)
legal_head = Hierarchy.create(name: 'Head of Legal', parent: ceo)
sales_head = Hierarchy.create(name: 'Head of Sales', parent: ceo)
administration_head = Hierarchy.create(name: 'Head of Administration', parent: ceo)
design_head = Hierarchy.create(name: 'Head of Design', parent: cto)
engineering_head = Hierarchy.create(name: 'Head of Engineering', parent: cto)
data_head = Hierarchy.create(name: 'Head of Data Science', parent: cto)
data_lead = Hierarchy.create(name: 'Data Science Lead', parent: data_head)
data_analysis_lead = Hierarchy.create(name: 'Data Analysis Lead', parent: data_head)
ux_lead = Hierarchy.create(name: 'UX designer Lead', parent: design_head)
ui_lead = Hierarchy.create(name: 'UI designer Lead', parent: design_head)
fe_lead = Hierarchy.create(name: 'Frontend engineer Lead', parent: engineering_head)
be_lead = Hierarchy.create(name: 'Backend engineer Lead', parent: engineering_head)
marketing_lead = Hierarchy.create(name: 'Marketing Lead', parent: marketing_head)