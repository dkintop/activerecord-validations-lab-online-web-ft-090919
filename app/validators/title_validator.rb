class TitleValidator < ActiveModel::Validator
    def validate(record)
        binding.pry
        if record.title && !record.title.include?("Won't Believe")  
            
            record.errors[:title] << "Not clickbaity enough"
        end
    end
end