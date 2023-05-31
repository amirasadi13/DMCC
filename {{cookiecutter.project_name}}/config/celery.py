import os
from celery import Celery
import datetime

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'config.django.local')

celery = Celery('config')
celery.config_from_object('django.conf:django', namespace='CELERY')
celery.now = datetime.datetime.utcnow
celery.autodiscover_tasks()