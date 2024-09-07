#echo insert the name of the volume you want to backup

mount /dev/sdb1 mount_point #change drive if necessary, create "mount_point" folder

for volume in $(docker volume ls --quiet)
do
	echo backing up $volume ...
	docker run -d --rm -v "$volume":/backup-volume -v "$(pwd)":/backup busybox tar -zcvf /backup/"$volume"-"$(date '+%Y-%m-%d')"-backup.tar.gz /backup-volume
	cp "$volume"-"$(date '+%Y-%m-%d')"-backup.tar.gz ./mount_point
	rm -rf "$volume"-"$(date '+%Y-%m-%d')"-backup.tar.gz
done

umount /dev/sdb1

echo backup drive unmounted
echo backup complete
