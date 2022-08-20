class CashRegister

    attr_accessor :total, :discount, :items, :transaction

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end     

    def add_item(title, price, quantity = 1)
        self.transaction = price * quantity
        self.total += self.transaction
        quantity.times do 
            self.items << title 
        end     
    end     

    def apply_discount
        if self.discount != 0
            percentage_discount = (100.0 - self.discount.to_f) / 100
            self.total = (self.total * percentage_discount).to_i
            return "After the discount, the total comes to $#{self.total}."
        else 
            return "There is no discount to apply."  
        end       
    end 

    def void_last_transaction
        self.total -= self.transaction
    end     
end 
