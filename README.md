# Employee Management System Assignment

### Installation:
* Install Ruby & Rails (latest version)
* Install PostgreSQL

### Dependencies to run:
* bundle install
* rails db:create
* rails db:migrate
* rails db:seed (for seeeding the data)
* rails s -p 4000 (to run the server on preferred port, example 4000)
* Access on Localhost:4000

### Technologies used:
* Ruby 
* Ruby on Rails
* PostgreSQL
* Bootstrap
* SASS
* Ancestry GEM


### Approach
I started with ERD and flowchart for company hierarchy. My first approach was employee table, with belongs_to manager and has_many subordinates join tables. Since both of subordinates and managers are employee too, I realised If the hyerarchy is more levels deep, example five subordinates, the quering for more nested branches might cause problems, cause running one query for employee will run a query for every other employee in the hierarchy. After a small research for working in hierarchical data structure, I found about the ancestry GEM which makes the root-parent-children-grandchildren easier.


I created a table for employees with reference hierarchies. Employee belongs_to Hierarchy. Hierarchy stands for the role of the employee, has many employees and has ancestry, means, every role exept the root(founder) has a parent role (the manager to who the person reports) and children roles (whoever reports to them).

![wireFrames](https://github.com/mau-dev/ems/blob/master/erd.png)

![wireFrames](https://github.com/mau-dev/ems/blob/master/employee-hierarchy.png)

### Problems 
When rendering the children of a hierarchy, beside the name of the children, aditional text about the whole ancestry relationship for that hierarchy and info about deeper descendants is rendered.
Since I couldn't figure it out how to remove that unwanted text within the time I had left, I decided not to show a visual tree of all hierarchies. I aligned the index of employees in cards, so to avoid the unwanted text to be rendered while iterating through all children (subordinates) of an employee, on the card itself I show "reports to: and the parent role", "is supervising: 3 employees"(just the amount of the employee's subordinates). I left the details of the subordinates only on the single employee page, where every subordinate is shown, but along with the big text about the detailed ancestry.

![wireFrames](https://github.com/mau-dev/ems/blob/master/Screenshot-root-form-new-emp.png)

![wireFrames](https://github.com/mau-dev/ems/blob/master/Screenshot-employees-index.png)


### What would I differently
If I was not running out of time, I would have find a way to remove the unwanted text from children nodes, so I can have a detailed tree structure of the employee system on the homepage. Every node in the tree with a link to every individual employee profile for the role. 