# Use the official PostgreSQL image from the Docker Hub
FROM postgres:latest

# Set environment variables for PostgreSQL
ENV POSTGRES_USER=laravel
ENV POSTGRES_PASSWORD=laravel
ENV POSTGRES_DB=bagisto

# Expose the PostgreSQL port
EXPOSE 5432

# Add any additional configuration or initialization scripts if needed
# COPY init.sql /docker-entrypoint-initdb.d/

# The default command will run the PostgreSQL server
CMD ["postgres"]
