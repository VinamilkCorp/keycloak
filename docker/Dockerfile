ARG KEYCLOAK_IMAGE="bitnami/keycloak:21.1.1"

# Create keycloak image
FROM ${KEYCLOAK_IMAGE}

WORKDIR /

# COPY vnm-* /opt/bitnami/keycloak/themes/vnmtheme
CMD [ "cp ./keycloak-them/login /opt/bitnami/keycloak/themes/" ]