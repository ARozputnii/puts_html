require "puts_html/version"

class PutsHtml
	def p_file
		if $string.include?("<") or $string.include?(">")
			$string.gsub!(/[<>]/,"")
		end
			File.open('text.html', 'w'){ |f| f.write "#{$string}  <br>#{$string2} <br>#{$string3}"  }
	end
end