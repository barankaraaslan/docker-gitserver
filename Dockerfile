FROM sshd-ldap

RUN pacman -S --noconfirm git
RUN mkdir -p /data
RUN chmod 0775 /data

COPY entrypoint-git.sh .
ENTRYPOINT ./entrypoint-git.sh