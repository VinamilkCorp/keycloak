ARG KEYCLOAK_IMAGE="bitnami/keycloak:21.1.1"

# Create keycloak image
FROM ${KEYCLOAK_IMAGE}

COPY ./vnm-keycloak-them/login/ /opt/jboss/keycloak/themes/vnmtheme

EXPOSE 3000