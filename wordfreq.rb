class Wordfreq
  STOP_WORDS = ['a', 'an', 'and', 'are', 'as', 'at', 'be', 'by', 'for', 'from',
    'has', 'he', 'i', 'in', 'is', 'it', 'its', 'of', 'on', 'that', 'the', 'to',
    'were', 'will', 'with']

  def initialize(filename)
    contents = File.read(filename)
    contents = contents.downcase.gsub(/[^a-z\s]/i, ' ')
    @@contents_array = contents.split(' ')
    # STOP_WORDS.each do |word|
    #   contents = contents.gsub(word, '')
    # end
  end

  def frequency(word)
    count = 0
    @@contents_array.each do |new_word|
      count += 1 if new_word == word
    end
    return count
  end

  def frequencies
  end

  def top_words(number)
  end

  def print_report
  end
end

if __FILE__ == $0
  filename = ARGV[0]
  if filename
    full_filename = File.absolute_path(filename)
    if File.exists?(full_filename)
      wf = Wordfreq.new(full_filename)
      wf.print_report
    else
      puts "#{filename} does not exist!"
    end
  else
    puts "Please give a filename as an argument."
  end
end
