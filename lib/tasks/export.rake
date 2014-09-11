namespace :export do
  puts "#encoding: utf-8"
  
  #rake export:seeds_format > db/seeds.rb
  task :seeds_format => :environment do
    Labels.order(:id).each do |record|
      puts "Labels.create(#{record.serializable_hash.delete_if {|key, value| ['created_at','updated_at'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
  end
  
  task :seeds_format => :environment do
    Language.order(:id).each do |record|
      puts "Language.create(#{record.serializable_hash.delete_if {|key, value| ['created_at','updated_at'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
  end

end