FROM registry.access.redhat.com/openshift3/ose-logging-curator:latest

MAINTAINER Prateek Bansal <pbansal@smartshifttech.com>

ENV HOME=/opt/app-root/src

RUN mkdir -p ${HOME}

ADD run_cron.py run.sh ${HOME}/

WORKDIR ${HOME}

USER 1000

CMD ["sh", "run.sh"]