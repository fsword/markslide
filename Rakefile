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
  `tar cvz -f slide.tgz #{sources.join ' '}`
end

task :environments do
  require './lib/boot.rb'
end

