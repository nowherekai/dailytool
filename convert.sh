for fullfile in *.m4a
do
  filename=$(basename "$fullfile")
  extension="${filename##*.}"
  filename="${filename%.*}"

  if [ -f "$filename.mp3" ]
  then
    echo "$filename.mp3 exist"
  else
    echo "$fullfile"
    ffmpeg -i "$fullfile" "$filename.mp3"
  fi
done
