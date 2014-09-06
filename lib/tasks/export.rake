namespace :export do
  puts "#encoding: utf-8"
  
  #rake export:seeds_format > db/seeds.rb
  desc "Prints AcademicPeriod.all in a seeds.rb way."
  task :seeds_format => :environment do
    AcademicPeriod.order(:id).each do |record|
      puts "AcademicPeriod.create(#{record.serializable_hash.delete_if {|key, value| ['created_at','updated_at'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
  end

  desc "Prints AcademicRecord.all in a seeds.rb way."
  task :seeds_format => :environment do
    AcademicRecord.order(:id).each do |record|
      puts "AcademicRecord.create(#{record.serializable_hash.delete_if {|key, value| ['created_at','updated_at'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
  end

  desc "Prints Attachment.all in a seeds.rb way."
  task :seeds_format => :environment do
    Attachment.order(:id).each do |record|
      puts "Attachment.create(#{record.serializable_hash.delete_if {|key, value| ['created_at','updated_at'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
  end

  desc "Prints Award.all in a seeds.rb way."
  task :seeds_format => :environment do
    Award.order(:id).each do |record|
      puts "Award.create(#{record.serializable_hash.delete_if {|key, value| ['created_at','updated_at'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
  end

  desc "Prints Certificate.all in a seeds.rb way."
  task :seeds_format => :environment do
    Certificate.order(:id).each do |record|
      puts "Certificate.create(#{record.serializable_hash.delete_if {|key, value| ['created_at','updated_at'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
  end

  desc "Prints Company.all in a seeds.rb way."
  task :seeds_format => :environment do
    Company.order(:id).each do |record|
      puts "Company.create(#{record.serializable_hash.delete_if {|key, value| ['created_at','updated_at'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
  end

  desc "Prints Education.all in a seeds.rb way."
  task :seeds_format => :environment do
    Education.order(:id).each do |record|
      puts "Education.create(#{record.serializable_hash.delete_if {|key, value| ['created_at','updated_at'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
  end

  desc "Prints Job.all in a seeds.rb way."
  task :seeds_format => :environment do
    Job.order(:id).each do |record|
      puts "Job.create(#{record.serializable_hash.delete_if {|key, value| ['created_at','updated_at'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
  end

  desc "Prints Labels.all in a seeds.rb way."
  task :seeds_format => :environment do
    Labels.order(:id).each do |record|
      puts "Labels.create(#{record.serializable_hash.delete_if {|key, value| ['created_at','updated_at'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
  end

  desc "Prints Language.all in a seeds.rb way."
  task :seeds_format => :environment do
    Language.order(:id).each do |record|
      puts "Language.create(#{record.serializable_hash.delete_if {|key, value| ['created_at','updated_at'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
  end

  desc "Prints Link.all in a seeds.rb way."
  task :seeds_format => :environment do
    Link.order(:id).each do |record|
      puts "Link.create(#{record.serializable_hash.delete_if {|key, value| ['created_at','updated_at'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
  end

  desc "Prints Publication.all in a seeds.rb way."
  task :seeds_format => :environment do
    Publication.order(:id).each do |record|
      puts "Publication.create(#{record.serializable_hash.delete_if {|key, value| ['created_at','updated_at'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
  end

  desc "Prints TypesCertificate.all in a seeds.rb way."
  task :seeds_format => :environment do
    TypesCertificate.order(:id).each do |record|
      puts "TypesCertificate.create(#{record.serializable_hash.delete_if {|key, value| ['created_at','updated_at'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
  end

  desc "Prints User.all in a seeds.rb way."
  task :seeds_format => :environment do
    User.order(:id).each do |record|
      puts "User.create(#{record.serializable_hash.delete_if {|key, value| ['created_at','updated_at', 'last_connection'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
  end

end