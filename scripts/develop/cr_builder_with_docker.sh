#!/bin/bash

echo 'FROM $1
RUN apt-get update && apt-get -y install sshfs openssl
RUN mkdir /mnt/data
RUN echo "#!/bin/bash\n\
  sshfs binary4cat@127.0.0.1:$2/ /mnt/data -o auto_cache,reconnect,transform_symlinks,follow_symlinks\n\
  bash\n" > start.sh
ENTRYPOINT [ "/bin/bash", "start.sh" ]' > /tmp/bulder_fockerfile 

docker build -t builder -f /tmp/bulder_fockerfile .
