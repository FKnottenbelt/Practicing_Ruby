class Complement
  def self.of_dna(strand)
    lookup = { 'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U' }
    strand.chars.map do |nucleotide|
      if lookup.include?(nucleotide)
        lookup[nucleotide]
      else
        return ''
      end
    end.join
  end
end

class BookKeeping
  VERSION = 4
end