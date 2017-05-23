class FoodChain

  ANIMAL_LINES = {
    "fly" => "I don't know why she swallowed the fly. Perhaps she'll die.\n",
    "spider" => "It wriggled and jiggled and tickled inside her.\n",
    "bird" => "How absurd to swallow a bird!\n",
    "cat" => "Imagine that, to swallow a cat!\n",
    "dog" => "What a hog, to swallow a dog!\n",
    "goat" => "Just opened her throat and swallowed a goat!\n",
    "cow" => "I don't know how she swallowed a cow!\n",
    "horse" => "She's dead, of course!"
  }

  private_constant :ANIMAL_LINES

  def self.song
    song = ""

    all_animals = ANIMAL_LINES.keys

    all_animals.each_with_index do |animal, index|
      if index == 0
        song += self.swallow(animal)
      elsif index < all_animals.length - 1
        song += self.swallow(animal)
        i = index

        until i == 0
          song += self.swallow_and_catch(all_animals[i], all_animals[i - 1])
          i -= 1
        end

        song += ANIMAL_LINES["fly"]
      else
        song += self.swallow(animal)
      end
      
      song += "\n"
    end

    song
  end

  def self.swallow(animal)
    "I know an old lady who swallowed a #{animal}.\n" + ANIMAL_LINES[animal]
  end

  def self.swallow_and_catch(predator, prey)
    swallow_and_catch = "She swallowed the #{predator} to catch the #{prey}" 
    prey == "spider" ? swallow_and_catch += " that wriggled and jiggled and tickled inside her.\n" : swallow_and_catch += ".\n"
    swallow_and_catch
  end

end


module BookKeeping
  VERSION = 2
end
