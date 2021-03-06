# Install flow:
# - clone the turnip-support repository to /tmp
# - move spec/* to spec
# - move lib/* to lib/
#

REPOSITORY = "git@github.com:ThuBM/turnip-support.git"
TMP_FOLDER = "/tmp/turnip-support"

if File.exist? TMP_FOLDER
  system "rm -rf #{TMP_FOLDER}"
end

system "git clone #{REPOSITORY} #{TMP_FOLDER}"

unless File.exist?("spec/steps") && File.directory?("spec/steps")
  system "mkdir -p spec/steps"
  puts "mkdir -p spec/steps"
end

system "mv #{TMP_FOLDER}/spec/steps/* spec/steps"
puts "mv #{TMP_FOLDER}/spec/steps/* spec/steps"

system "mv #{TMP_FOLDER}/spec/google_drive_helper.rb spec/"
puts "mv #{TMP_FOLDER}/spec/google_drive_helper.rb spec/"

system "mv #{TMP_FOLDER}/lib/* lib/"
puts "mv #{TMP_FOLDER}/lib/* lib/"
