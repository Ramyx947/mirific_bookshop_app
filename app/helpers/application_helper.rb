module ApplicationHelper
    
    def render_if(condition, record)
        if condition
            render record
        end
    end
    
    def quid(price)
        number_to_currency(price, :unit => "£")
      end
end
