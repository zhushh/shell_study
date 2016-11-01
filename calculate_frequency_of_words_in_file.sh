# Read from the file words.txt and output the word frequency list to stdout.
cat words.txt | tr '\n' ' ' | awk 'BEGIN{RS=" "} {w[$0] += 1} END { for (key in w) if (key != "") printf("%s %d\n", key, w[key])}' | sort -k 2 -rn
