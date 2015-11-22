# dotfiles
My custom configs.

Installer creates symlinks to configuration files, that way
any change will happen in both files, so changes can be commited.

When creating symlink:
  * if file exists
    * and it is a symlink -> just overwrite
    * else rename /file/ to /file/.BACKUP

Creates folders for custom files like bash and less history.
