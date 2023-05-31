from .base import *  # noqa
{% if cookiecutter.use_celery %}

CELERY_BROKER_BACKEND = "memory"
CELERY_TASK_ALWAYS_EAGER = True
CELERY_TASK_EAGER_PROPAGATES = True

{%- endif %}