require "puts_html/version"

module PutsHtml
	class PutsHtml
	  def initialize
	    $string
	    $string2
	    $string3
	  end
	  def p_file
	    if $string.include?("<") or $string.include?(">")
	        $string.gsub!(/[<>]/,"")
	    end
	    File.open('text.html', 'w'){ |f| f.write "#{$string}  <br>#{$string2} <br>#{$string3}"  }
	  end
	end
	$f = PutsHtml::PutsHtml.new
end