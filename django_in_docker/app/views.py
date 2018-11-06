# -*- coding: utf-8 -*-
from __future__ import absolute_import
from __future__ import unicode_literals

from django.core.cache import cache
from django.http import HttpResponse

from .models import Log
from .tasks import add


def chk(req):
    return HttpResponse('ok, django in docker, %s, %s, %s' % (req.get_raw_uri(), req.get_full_path(), req.get_host()))


def db(req):
    obj_list = Log.objects.all()
    count = 0 if obj_list is None else len(obj_list)

    Log.objects.create(ops='chk_db: {}'.format(count))
    return HttpResponse('db, log: {}'.format(count + 1))


def cache_chk(req):
    key = 'chk_cache'
    value = cache.get(key)
    if value is None:
        value = 0

    cache.set(key, value + 1)
    return HttpResponse('cache, key: {}, value: {}'.format(key, value + 1))


def mq(req):
    return HttpResponse('mq, count: {}'.format('todo'))


def task(req):
    job = add.delay({'x': 3, 'y': 5})
    ret = job.wait()
    return HttpResponse('task, job: {}, result: {}'.format(job, ret))

    # return HttpResponse('task, result: {}'.format(add({'x': 3, 'y': 5})))
