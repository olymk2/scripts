function clip_diff
   xsel --clipboard > /tmp/meld_paste.txt & meld $argv /tmp/meld_paste.txt
end

