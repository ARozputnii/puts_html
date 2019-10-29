require "puts_html/version"

class PutsHtml
  def self.add_to_file (content, bypass_html)
    string = ''
    if bypass_html == false
        string = content.gsub!(/[<>]/,"")
    end
		   f = File.new("index.html", "w")
    f.write("<!DOCTYPE html>\n")
    f.write("<html lang='en'>")
    f.write("<head>\n<meta charset='utf-8'>\n<title> Web </title>\n</head>\n")
    f.write("<body>\n#{string}\n</body>\n")
    f.write("</html>")
    f.close
  end
end