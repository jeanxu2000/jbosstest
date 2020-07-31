FROM jboss/wildfly:latest

ADD customization /opt/jboss/wildfly/customization/
ADD modules /opt/jboss/wildfly/modules/

RUN /opt/jboss/wildfly/customization/execute.sh

CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]
