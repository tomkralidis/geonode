set -a
. ./.env_dev
set +a

celery -A geonode.celery_app:app worker -B -E --statedb=worker.state -s celerybeat-schedule --loglevel=DEBUG --concurrency=10 -n worker1@%h
