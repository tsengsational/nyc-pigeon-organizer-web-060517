require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_names = []
  pigeon_list = {}
  data.each do |attribute, item|
    item.each do |array|
      array.each do |key, value|
        pigeon_names << value
      end
    end
  end
  pigeon_names = pigeon_names.flatten.uniq.delete_if { |e| e.nil? }
  binding.pry

end
