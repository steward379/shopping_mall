class Cart
    attr_reader :items
    # def items
    #     @items
    # end

    def initialize
        @items =[]
    end
    
    def empty?
        items.empty?
    end

    def add_item(product_id)
        found_item = @items.find { |item| 
            item.product_id == product_id 
        }
        if found_item
            # found_item.quantity += 1
            found_item.increment
        else 
            items << CartItem.new(product_id)
        end
        # @items << product_id
    end

    def total_price
        # @items.each do |Item|
        #     total += item.total_price
        # end
        items.reduce(0) { |sum, item| sum + item.total_price}

    end

end