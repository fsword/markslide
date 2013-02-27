desc "render content to a single html file"
task :generate => :environments do
  head = File.read('head.part')
  tail = File.read('tail.part')
  content = @markdown.render File.read('index.md')
  File.open('index.html', 'w') do |f|
    f.write head
    f.write content[10..-1]
    f.write tail
  end
end

desc "package content with resource files"
task :pkg => :generate do
  sources = File.readlines('index.html').map do |line|
    if line.chomp =~ /<link.+href=\"(.+)\">/
      $1
    elsif line.chomp =~ /<script.+src=\"(.+)\".+>/
      $1
    elsif line.chomp =~ /<img src=\"([^"]+)\".+>/
      $1
    end
  end.uniq.compact

  sources << 'index.html'
  
  require 'zip/zip'
  branch_name = `git branch 2> /dev/null`.split(/\n/).select{|s| s =~ /^\*/ }[0][2..-1]
  file = "#{branch_name}.zip"
  puts file
  File.delete file rescue nil
  Zip::ZipFile.open(file, Zip::ZipFile::CREATE) do |zipfile|
    sources.each do |filename|
      zipfile.add(filename, filename)
    end
  end

end

task :environments do
  require './lib/boot.rb'
end

