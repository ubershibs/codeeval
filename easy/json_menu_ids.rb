require 'json'
File.open(ARGV[0]).each_line do |line|
#File.open("sample.txt", "r").each_line do |line|
  unless line.chomp.to_s.empty?
    parsed = JSON.parse(line.chomp)
    sum = 0
    parsed["menu"]["items"].each do |item|
      unless item.nil?
        if item["label"]
          sum += item["id"]
        end
      end
    end
    puts sum
  end
end
