#!/usr/bin/env ruby
require 'fileutils'
require 'yaml'

working_dir = File.expand_path(File.dirname(__FILE__))
home_dir    = File.expand_path("~")
dot_files   = Dir.glob(File.join(working_dir,"*"))

datetime    = Time.now.strftime("%Y%m%d%H%M%S")

dot_files.each do |filename|
  next if filename =~ /activate\.rb$/
  next if filename =~ /README\.md$/

  sym_link = File.join(home_dir,".#{File.basename(filename)}")

  # Make a backup if the file already exists
  FileUtils.cp sym_link, "#{sym_link}.bk#{datetime}" if File.exists?(sym_link)

  # Removes a sym link or file if already exists
  FileUtils.rm sym_link if File.symlink?(sym_link) || File.exist?(sym_link)

  # Creates the sym link
  FileUtils.ln_s filename, sym_link
end

