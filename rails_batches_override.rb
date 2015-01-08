# in our app we should write the override module for BatchOverride.
# find_in_batches uses method batch_order with default 
#def batch_order
# "#{table_name}.#{primary_key} ASC"
#end
# I've used attr_accessor to pre-define it from my current context.

module BatchOverride
  attr_accessor :order_options_for_batches
   private
   def batch_order()
     order_options_for_batches.present? ? order_options_for_batches : super
   end 
end

ActiveRecord::Relation.send :include, BatchOverride