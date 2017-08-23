class Cart
    attr_reader :items
    # def items
    #     @items
    # end

    def initialize(items = [])
        @items = items
    end

    def self.from_hash(hash)
        if hash.nil? or hash["items"].nil?
            # Cart.new
            new
        else
            new hash["items"].map { |item|
                CartItem.new(item["product_id"], item["quantity"])
            }
            # a = []
            # a = hash["items"].each do |item|
            #     a << CartItem.new(item["product_id"], item["quantity"])
            # end
            # Cart.new(a)
        end

    end

    def serialize
        a = []

        # @items.each do |item|
        #     a << { "product_id" => item.product_id,
        #            "quantity" => item.quantity }
        # end

        all_items = items.map { |item|
            { "product_id" => item.product_id, "quantity" => item.quantity }
        }

        { "items" => all_items }
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