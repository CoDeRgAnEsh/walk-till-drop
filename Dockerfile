FROM ubuntu-latest

LABEL "version"="0.0.5"
LABEL "com.github.actions.name"="Release Flutter APK Publisher"
LABEL "com.github.actions.description"="Build & Publish Flutter Release APK on Github"
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="green"

LABEL "repository"="https://github.com/Cafrecode/action-release-apk"
LABEL "maintainer"="Cafrecode"

RUN apt update \
	&& apt -y upgrade \
	&& apt install -y hub \
	&& apt autoremove \
	&& apt autoclean \
	&& apt clean

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
© 2020 GitHub, Inc.
