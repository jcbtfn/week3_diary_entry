require "diary_entry"

text1_50 = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel aliquet felis.
            Quisque gravida pretium efficitur. In venenatis malesuada tempus. 
            Pellentesque nunc nisi, ornare vel est non, ornare facilisis ex. 
            Pellentesque aliquam, justo et vestibulum finibus, ante tortor eleifend nisi,
            ut consequat turpis nulla eu justo. Aliquam sagittis porta egestas."

text2_20 = "Cras ornare sapien vel interdum dapibus. Curabitur cursus pulvinar consequat. Praesent aliquam nulla et ligula tincidunt laoreet. Morbi commodo ante."

text3_100 = "Mauris sit amet mauris a velit dictum malesuada. Quisque nunc mi, ullamcorper 
            et tempus vitae, eleifend ut urna. Donec vehicula massa eu pellentesque rhoncus.
            Praesent ultricies diam dui, vitae varius mauris pellentesque ac. Proin mattis dictum tristique. 
            Donec luctus arcu et consequat blandit. Duis sapien tortor, mattis at dui id, semper tempus erat. 
            Donec sed placerat nulla. Suspendisse mattis ipsum in lacinia semper. Mauris quis tortor ut magna 
            consectetur accumsan. Nunc pharetra dictum diam ut cursus. Suspendisse nec tellus non nunc 
            sollicitudin auctor at quis orci. Quisque odio mi, faucibus non hendrerit eget, ornare sed nisi. 
            Donec enim est, placerat."



RSpec.describe "DiaryEntry class" do
    it "returns the title as a string" do
        entry = DiaryEntry.new("Wednesday 01/01/2001", "This is the first entry of the diary")
        expect(entry.title).to eq "Wednesday 01/01/2001"
    end

    it "returns the contents as a string" do
        entry = DiaryEntry.new("Monday 02/02/2002", "This is the second entry of the diary")
        expect(entry.contents).to eq "This is the second entry of the diary"
    end

    it "returns the number of words in the contents as an integer" do
        entry = DiaryEntry.new("Saturday 03/03/2003", "This is the third entry of the diary and this entry has fourteen words")
        expect(entry.count_words).to eq 14
    end

    it "returns an integer representing an estimate of the reading time in minutes" do
        entry = DiaryEntry.new("Tuesday 04/04/2004", text1_50)
        expect(entry.reading_time(25)).to eq 2
        expect(entry.reading_time(5)).to eq 10
        expect(entry.reading_time(10)).to eq 5
        expect(entry.reading_time(7)).to eq 7
    end

    it "returns a string with a chunk of the contents that the user could read 
        in the given number of minutes. - with perfect conditions -" do
        entry = DiaryEntry.new("Sunday 05/05/2005", text2_20)
        expect(entry.reading_chunk(10,1)).to eq "Cras ornare sapien vel interdum dapibus. Curabitur cursus pulvinar consequat."
        expect(entry.reading_chunk(10,1)).to eq "Praesent aliquam nulla et ligula tincidunt laoreet. Morbi commodo ante."
    end

    it "returns a string with a chunk of the contents that the user could read 
        in the given number of minutes. - with imperfect conditions -" do
        entry = DiaryEntry.new("Friday 06/06/2006", text2_20)
        expect(entry.reading_chunk(15,1)).to eq "Cras ornare sapien vel interdum dapibus. Curabitur cursus pulvinar consequat. Praesent aliquam nulla et ligula"
        expect(entry.reading_chunk(15,1)).to eq "tincidunt laoreet. Morbi commodo ante."
        expect(entry.reading_chunk(15,1)).to eq "Cras ornare sapien vel interdum dapibus. Curabitur cursus pulvinar consequat. Praesent aliquam nulla et ligula"
    end
    
end