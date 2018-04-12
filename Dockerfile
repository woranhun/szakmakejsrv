FROM ubuntu:16.04
RUN apt-get update && \
	apt-get install nano mc wget openssh-server -y
RUN mkdir /var/run/sshd && \
	echo 'root:umszki123!' | chpasswd && \
	sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config && \
	sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd
ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

RUN useradd -ms /bin/bash level00 && \ 
				useradd -ms /bin/bash level01 && \ 
        useradd -ms /bin/bash level02 && \ 
        useradd -ms /bin/bash level03 && \ 
        useradd -ms /bin/bash level04 && \ 
        useradd -ms /bin/bash level05 && \ 
        useradd -ms /bin/bash level06 && \ 
        useradd -ms /bin/bash level07 && \ 
        useradd -ms /bin/bash level08 && \ 
        useradd -ms /bin/bash level09 && \ 
        useradd -ms /bin/bash level10 
	#&& \ 

RUN     echo 'level00:level00' | chpasswd && \
  echo 'level01:csakalinux' | chpasswd && \
	echo 'level02:pdmgrw25jds24' | chpasswd && \
	echo 'level03:fehu21421ehakds' | chpasswd && \
	echo 'level04:192.168.1.11' | chpasswd && \
	echo 'level05:level05' | chpasswd && \
	echo 'level06:level06' | chpasswd && \
	echo 'level07:level07' | chpasswd && \
  echo 'level08:level08' | chpasswd && \
	echo 'level09:level09' | chpasswd && \
	echo 'level10:level10' | chpasswd
	# && \
RUN chmod -R 700 /home/level00/ && \
	chmod -R 700 /home/level01/ && \
	chmod -R 700 /home/level02/ && \
	chmod -R 700 /home/level03/ && \
	chmod -R 700 /home/level04/ && \
	chmod -R 700 /home/level05/ && \
	chmod -R 700 /home/level06/ && \
	chmod -R 700 /home/level07/ && \
	chmod -R 700 /home/level08/ && \
	chmod -R 700 /home/level09/ && \
	chmod -R 700 /home/level10/
	# && \
RUN touch /home/level01/jelszo && \
	echo '#Tudtad? a linuxban minden file még ez is amit most olvasol...\n Ezért a kiterjesztések nem számítanak sokat.\n Ezért tudod olvasni ezt a file-t, ami nem .txt kiterjesztésű :D\n' >> /home/level01/jelszo && \
	echo 'A jelszó a következő színthez  pedig :pdmgrw25jds24\n' >> /home/level01/jelszo 
RUN touch /home/level02/.jelszo && \
	echo '# A linuxban a .-al kezdődő fileok rejtettek...\n Ezért volt nehezebb megtalálni.\n' >> /home/level02/.jelszo && \
	echo 'A jelszó a következő színthez  pedig :fehu21421ehakds\n' >> /home/level02/.jelszo 

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]

