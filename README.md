This is small rails extension to customize order when working with batches.

find_in_batches uses method batch_order with default implementation:
def batch_order
 "#{table_name}.#{primary_key} ASC"
end

In our app we should write the override module for BatchOverride.

I've used attr_accessor to pre-define it from my current context