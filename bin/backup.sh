echo "***** Backing up Desktop"
rsync -av --delete /Users/gerry/Desktop/ /Volumes/Tiny\ Drive/Backup/Desktop/
echo "***** Backing up Developer"
rsync -av --delete /Users/gerry/Developer/ /Volumes/Tiny\ Drive/Backup/Developer/
echo "***** Backing up Documents"
rsync -av --delete /Users/gerry/Documents/ /Volumes/Tiny\ Drive/Backup/Documents/

# Important master music collection is on Tiny Drive (not mac!)
echo "***** Backing up Tiny Drive/DJ"
rsync -av --delete /Volumes/Tiny\ Drive/DJ/ /Users/gerry/Music/DJ/

# Apple Music is on main drive
rsync -av --delete /Users/gerry/Music/Music /Volumes/Tiny\ Drive/Music
