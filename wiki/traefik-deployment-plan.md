# Traefik Deployment Plan

## Determine deployment method

- references - "configure traefik"

### Actions

- `docker run` - best for testing or local development
  - Manual
  - Semi-Automated - All configurations in docker-compose file
  - Automated - deployed from a CI/CD pipeline

What is the target infrastructure?
What orchestration system will you use?

## Configuration format

- references - "configure traefik"

### Actions

- Decide on Static configuration format (TOML, YAML, or CLI/Env variables)
- Determine the configruations requried

## Let's Encrypt or Bring your own Certificate

- references - "HTTPS/TLS/Let's Encrypt"

### Actions

- Will Let's Encypt cetificates satifsy requirements?
- Maybe a mix of certificates
- Bring your own certificates

## Map our Middlewares

- references - "middlewares"

### Actions

- What middlewares do the applications require?
- Any overlap between applications?
- Are you missing Middleware functionality?
- How is authentication handled?

## Application migration

- references - "middlewares"

### Actions

- Are the applications already running in containers?
- Will Traefik handle a small or large number of containers?
- Setup a label template which can easily be shared for each application

## Determine the tools to be used for logging & monitoring

- references - "operations"

### Actions

- Enable Traefik Healthchecks & Ping endpoint
- Backup plan for configs & certificates
- Disaster Recovery plan in place

## Determine the tools to be used for logging & monitoring

- references - "observability"

### Actions

- Decide on how to send logs from Traefik to your logging server or stored outside the container
- What is going to monitor Traefik?

## Securing Hardening

- references - "operations"

### Actions

- Ensure Dashboard runs in secure mode
- Set passwords for the Dashboard/API
- Limit the IP range that has access to the Dashboard (NOT PUBLIC)
- Harden the server which Traefik runs
