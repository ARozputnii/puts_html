require "puts_html/version"

module PutsHtml
  def self.add_to_file (content, bypass_html)
    string = ''
    if bypass_html == false
        string = content.gsub!(/[<>]/,"")
    end
		File.open('index.html', 'w'){ |f| f.write 
		"<!DOCTYPE html>\n 
		<html lang='en'>
			<head>\n
				<meta charset='utf-8'>\n
				<title> Web </title>\n
			</head>\n
			<body>\n
				#{string}\n
			</body>\n
		</html>" }
  end
end