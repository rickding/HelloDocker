from __future__ import absolute_import

from celery import shared_task


@shared_task
def add(args_dict):
    return {
        'result': args_dict.get('x') + args_dict.get('y'),
    }
