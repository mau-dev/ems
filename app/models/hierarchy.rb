class Hierarchy < ApplicationRecord
   has_ancestry

   has_many :employees
    # attr_accessor :parent_id, :name



end