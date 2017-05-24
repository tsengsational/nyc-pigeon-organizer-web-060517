require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_names = []
  pigeon_list = {}
  data.each do |attribute, item|
    item.each do |key, value|
        pigeon_names << value
    end
  end
  pigeon_names = pigeon_names.flatten.uniq.delete_if { |e| e.nil? }

  pigeon_names.each do |name|
    pigeon_list[name] = Hash.new {|k, v| k[v] = []}
    data.each do |attribute, item|
      pigeon_list[name][attribute]
      item.each do |key, value|
        value.each do |array|
          pigeon_list[array][attribute] << key.to_s if array == name
        end
      end
    end
  end
  pigeon_list
end
