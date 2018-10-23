# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.http import HttpResponse

from .models import Log


def chk(req):
    return HttpResponse('ok, django 3 in docker, %s, %s, %s' % (req.get_raw_uri(), req.get_full_path(), req.get_host()))


def db(req):
    count = len(Log.objects.all())
    Log.objects.create(ops='db: %d' % count)
    return HttpResponse('db, log: %d' % count + 1)
