# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.http import HttpResponse
from django.core.cache import cache

from .models import Log


def chk(req):
    return HttpResponse('ok, django in docker, %s, %s, %s' % (req.get_raw_uri(), req.get_full_path(), req.get_host()))


def db(req):
    obj_list = Log.objects.all()
    count = 0 if obj_list is None else len(obj_list)
    Log.objects.create(ops='chk_db: {}'.format(count))
    return HttpResponse('db, log: {}'.format(count + 1))


def cache_chk(req):
    key = 'chk_cache'
    count = cache.get(key)
    if count is None:
        count = 0

    cache.set(key, count + 1)
    return HttpResponse('cache, count: {}'.format(count + 1))


def mq(req):
    return HttpResponse('mq, count: {}'.format('todo'))


def task(req):
    return HttpResponse('task, count: {}'.format('todo'))
