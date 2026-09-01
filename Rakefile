require "rake"
require "erb"

desc "Install the dot files into user's home directory"
task :install do
  # link Fish Shell config
  system %Q{mkdir -p "$HOME/.config/fish"}
  system %Q{ln -fs "$PWD/fish/functions" "$HOME/.config/fish/functions"}

  replace_all = false
  files = Dir["*"] - %w[
    bin
    brew
    fish
    gitx
    LICENSE
    Rakefile
    README.md
  ]
  files.each do |file|
    system %Q{mkdir -p "$HOME/.#{File.dirname(file)}"} if file =~ /\//
    if File.exist?(File.join(ENV["HOME"], ".#{file.sub(/\.erb$/, "")}"))
      if File.identical?(file, File.join(ENV["HOME"], ".#{file.sub(/\.erb$/, "")}"))
        puts "identical ~/.#{file.sub(/\.erb$/, "")}"
      elsif replace_all
        replace_file(file)
      else
        print "overwrite ~/.#{file.sub(/\.erb$/, "")}? [ynaq] "
        case $stdin.gets.chomp
        when "a"
          replace_all = true
          replace_file(file)
        when "y"
          replace_file(file)
        when "q"
          exit
        else
          puts "skipping ~/.#{file.sub(/\.erb$/, "")}"
        end
      end
    else
      link_file(file)
    end
  end
end

desc "Link bin/* into ~/.local/bin, which custom_shell_init.fish puts on PATH"
task :bin do
  dest = File.join(ENV["HOME"], ".local", "bin")
  system %Q{mkdir -p "#{dest}"}
  Dir["bin/*"].each do |file|
    target = File.join(dest, File.basename(file))
    if File.exist?(target) && !File.symlink?(target)
      puts "skipping #{target}, a real file is already there"
      next
    end
    puts "linking #{target}"
    system %Q{ln -sfn "$PWD/#{file}" "#{target}"}
  end
end

def replace_file(file)
  system %Q{rm -rf "$HOME/.#{file.sub(/\.erb$/, "")}"}
  link_file(file)
end

def link_file(file)
  if file =~ /.erb$/
    puts "generating ~/.#{file.sub(/\.erb$/, "")}"
    File.open(File.join(ENV["HOME"], ".#{file.sub(/\.erb$/, "")}"), "w") do |new_file|
      new_file.write ERB.new(File.read(file)).result(binding)
    end
  else
    puts "linking ~/.#{file}"
    system %Q{ln -s "$PWD/#{file}" "$HOME/.#{file}"}
  end
end
