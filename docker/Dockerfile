ARG KEYCLOAK_IMAGE="bitnami/keycloak:21.1.1"

# Create keycloak image
FROM ${KEYCLOAK_IMAGE}

WORKDIR /keycloak

COPY ./vnm-keycloak-theme  /opt/bitnami/keycloak/themes/vnm-keycloak-theme
