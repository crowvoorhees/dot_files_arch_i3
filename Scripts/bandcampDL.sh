
sourceString=$(curl -s $1)

# pull title from <meta name="title" contents="
prefix='<meta name="title" content="'
suffix='"'
title=$(echo $sourceString | grep -Po '<meta name="title" content=".*?"' | sed "s/^$prefix//" | sed "s/$suffix$//")
prefix='<link rel="image_src" href="'
cover=$(echo $sourceString | grep -Po '<link rel="image_src" href=".*?"' | sed "s/^$prefix//" | sed "s/$suffix$//")
# create folder in current directory using title name
mkdir -p "$title"
wget $cover -O "$title/folder.jpg"
# pull album coverand save as folder.jpg from <link rel="image_src" href="

#loop
#     get track number + titles
#         "track_num":
#         "title":
#     wget track and save as track_num+tilte+.mp3
#         "file":{"mp3-128":" 
