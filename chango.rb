# getting the practice files from notational data support folder with correct dates:
# cp -R -p ~/Library/Application\ Support/Notational\ Data/ ./good_posts

require "time"

# change filename to conform to jekyll post format: 2014-03-13-some-title-note.txt
# and add front matter at the beggining
# run chango in pry from the dir containing the notes
def chango!
  # get all the files from the current dir and do stuff to each
  Dir.glob("./*").sort.each do |entry|
    # prep for file renaming
    base = File.basename(entry)
    hyphenated = base.gsub(" ", "-")
    time_obj = File.mtime(entry)
    formatted_date = time_obj.strftime("%Y-%m-%d")
    new_entry = formatted_date + "-" + hyphenated

    # prep for prepending frontmatter
    title = base
    front_matter = ["---\n", "layout: post\n", "title:  \"#{title}\"\n", "---\n", "\n"]
    f = File.open(entry, "r+")
    lines = front_matter + f.readlines
    f.close

    # rename the file
    File.rename(entry, new_entry)

    # prepend the frontmatter
    f = File.open(new_entry, "w")
    lines.each do |line|
      f.write line
    end
    f.close
  end
end
