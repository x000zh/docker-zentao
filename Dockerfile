
FROM ubuntu

MAINTAINER x000zh<z@oio7.com>

WORKDIR /opt

COPY ./script/run.sh .

# ADD http://sourceforge.net/projects/zentao/files/9.8.3/ZenTaoPMS.9.8.3.zbox_64.tar.gz/download /opt/zentao.tar.gz

ADD http://dl.cnezsoft.com/zentao/9.8.3/ZenTaoPMS.9.8.3.zbox_64.tar.gz /opt/zentao.tar.gz
RUN tar zxvf zentao.tar.gz -C /opt/

ENTRYPOINT ["bash", "run.sh"]
