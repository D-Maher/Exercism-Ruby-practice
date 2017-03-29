class Complement

  def self.of_dna(dna_strand)

    return "" if !dna_strand.chars.reject { |nuc| %w(G C T A).include?(nuc) }.empty?

    dna_strand.tr("GCTA", "CGAU")

  end

end


module BookKeeping

  VERSION = 4

end