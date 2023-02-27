
class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs, through: :freebies
  
    def give_freebie(dev, item_name, value)
      freebie = Freebie.new(dev: dev, company: self, item_name: item_name, value: value)
      freebie.save
      freebie
    end
  
    def oldest_company
      Company.order(:founding_year).first
    end

    def print_details
        "#{dev.name} owns a #{item_name} from #{company.name}"
      end

      def self.oldest_company
        order(founding_year: :asc).first
      end
  end