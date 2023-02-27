class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies
  
    def received_one?(item_name)
      freebies.exists?(item_name: item_name)
    end
  
    def give_away(dev, freebie)
      if freebie.dev == self
        freebie.update(dev: dev)
        true
      else
        false
      end
      def give_away(another_dev, freebie)
        if freebie.dev_id == self.id
          freebie.update(dev_id: another_dev.id)
          puts "#{self.name} gave away a #{freebie.item_name} to #{another_dev.name}"
        else
          puts "#{self.name} does not have this freebie"
        end
      end
    
    end
  end