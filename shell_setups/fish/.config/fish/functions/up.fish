function up
set -l this $argv[1]
while test $this -gt 0;
cd ..
set -f this (math $this - 1)
end
end
