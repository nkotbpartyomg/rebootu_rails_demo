class Summarizer
  def self.call(raw_text)
    sentences = raw_text.gsub(/\s+/, ' ').strip.split(/\.|\?|!/)
    sentences_sorted = sentences.sort_by { |sentence| sentence.length }
    one_third = sentences_sorted.length / 3
    middle_third = sentences_sorted.slice(one_third, one_third + 1)
    ideal_sentences = sentences_sorted.select { |sentence| sentence =~ /is|are/ }
 
    ideal_sentences.join(".")
  end
end