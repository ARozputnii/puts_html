require "puts_html/version"

  class Putshtml
    def self.add_to_file (content, bypass_html)
      string = ''
      if bypass_html == false
        string = content.gsub!(/[<>]/,"")
      else
        string = content
      end
      f = File.new("index.html", 'w+')
        f.puts "<!DOCTYPE html>"
        f.puts "<html lang='en'>"
        f.puts "  <head>"
        f.puts "    <meta charset='utf-8'>"
        f.puts "    <title>Indicators Tamagotchi</title>"
        f.puts "  </head>"
        f.puts "  <body>"
        f.puts "      <p>#{string}</p>"
        f.puts "  </body>"
        f.puts "</html>"
        f.close
    end
  end
