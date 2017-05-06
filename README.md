# Zoneminder 1.30.3 for unRAID

The configuration settings that are needed for this implementation of Zoneminder are pre-applied and do not need to be changed on the first run of Zoneminder.

This verson will now upgrade from previous versions.

To run Zoneminder on unRAID:

docker run -d --name="Zoneminder" \
--net="bridge" \
--privileged="true" \
-p 8080:80/tcp \
-e TZ="America/New_York" \
-e SHMEM="50%" \
-e PUID="99" \
-e PGID="100" \
-v "/mnt/cache/appdata/Zoneminder":"/config":rw \
-v "/mnt/cache/appdata/Zoneminder/data":"/var/cache/zoneminder":rw \
zoneminder

Changes:

2017-05-05
- Perl scripts are no longer exposed at config/.  They change on each version and can't be persistent.

2017-05-05
- Initial release.
- Fixed update so databases can now be upgraded in place.