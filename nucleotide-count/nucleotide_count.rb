class Nucleotide
  attr_reader :dna_strand

  def initialize(dna_strand)
    @dna_strand = dna_strand
  end

  def self.from_dna(dna_strand)
    new(dna_strand)
  end

  def count(target_nucleotide)
    return 0 if dna_strand.empty?

    dna_strand.chars.select { |nucleotide| nucleotide == target_nucleotide }.length
  end

  def histogram
    histogram = {
      "A" => 0,
      "T" => 0,
      "C" => 0,
      "G" => 0
    }

    histogram.each do |nucleotide, count|
      histogram[nucleotide] = count(nucleotide)
    end

    histogram
  end

end
