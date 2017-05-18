class Nucleotide
  attr_reader :dna_strand

  def initialize(dna_strand)
    @dna_strand = dna_strand
  end

  def self.from_dna(dna_strand)
    new(dna_strand)
  end

  def count(nucleotide)
    return 0 if dna_strand.empty?
  end

end
