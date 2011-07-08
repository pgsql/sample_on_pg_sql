namespace :display do
  desc "Display the vehicle count"
  task :vehicle => :environment do
    if ENV['make'].blank?
      puts "ERROR:: Please specify the make values as environment"
    else
      puts "|" + "  Company ID  " + "|" + "  Name  " + "|" + "  Make " + "|" + " Vehicles "
      Company.all.each do |company|
        vehicles = Vehicle.find_all_by_make(ENV['make'])
        if !vehicles.blank?
          puts "|   " + company.id.to_s + "  |  " + company.name + "  |  " + ENV['make'] + "  |   " + vehicles.count.to_s
        end
      end
    end
  end
end
