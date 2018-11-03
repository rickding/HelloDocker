# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.http import HttpResponse

from .models import Log


def chk(req):
    return HttpResponse('ok, django in docker, %s, %s, %s' % (req.get_raw_uri(), req.get_full_path(), req.get_host()))


def db(req):
    obj_list = Log.objects.all()
    count = 0 if obj_list is None else len(obj_list)
    Log.objects.create(ops='db: {}'.format(count))
    return HttpResponse('db, log: {}'.format(count + 1))


def cache(req):
    return HttpResponse('cache, count: {}'.format('todo'))


def mq(req):
    return HttpResponse('mq, count: {}'.format('todo'))


def task(req):
    return HttpResponse('task, count: {}'.format('todo'))
