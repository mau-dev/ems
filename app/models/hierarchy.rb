class Hierarchy < ApplicationRecord
   has_ancestry

   has_many :employees
   has_many :children

    def self.arrange_as_array(options={}, hash=nil)
    hash ||= arrange(options)

    arr = []
    hash.each do |node, children|
      arr << node
      arr += arrange_as_array(options, children) unless children.empty?
    end
    arr
  end




end