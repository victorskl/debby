# debby

Debby serve as my general purpose Debian desktop/workstation running as  docker container.
 
**Blurb**: Sometime, we want a specific Shell environment for developing scripts such that shell tools behave differently on macOS. In good-old days, we do this with dual boot or like so. That was so  90s... ya know! Parallel or VirtualBox or Vagrant might work too, but I find quite an overhead with hypervisor; unless I really need a kernel isolation. So, if your routine is doing normal application development, give it a shot to Debby, it work well for me!


- Overwrite or add any fields with [`docker-compose.override.yml`](https://docs.docker.com/compose/extends/) and then,
  
  ```
  docker-compose -p dev up -d
  docker-compose -p dev down
  ```

- Then, link `debby` to PATH

  ```
  ln -s $(pwd)/debby /usr/local/bin/debby
  ```

- Then, enter into debby

  ```
  debby
  ```

