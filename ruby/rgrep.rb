def rgrep(filename, phrase)
  phrase = Regexp.new(phrase.to_s) unless phrase.instance_of? Regexp
  fp = File.open(filename, 'r')
  fp.each { |line|
    puts line if line =~ phrase
  }
end


  
