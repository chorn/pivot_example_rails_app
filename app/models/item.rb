class Item < ActiveRecord::Base
  Item.inheritance_column = nil
end
