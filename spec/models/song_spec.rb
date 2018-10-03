RSpec.describe Song do
  describe "Class Methods" do
    describe ".total_play_count" do
      it "returns total play counts for all songs" do
        # binding.pry
        Song.create(title: "Song 1", length: 180, how_many_times: 4)

        expect(Song.total_play_count).to eq(4)
      end
    end
  end

  describe "Validations" do
    it "is invalid without a play count" do
      song = Song.new(title: "Oh man", length: 407)

      expect(song).to_not be_valid
    end
  end

end
