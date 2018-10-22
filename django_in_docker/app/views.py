# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.http import HttpResponse


def chk(req):
    return HttpResponse('ok, %s, %s, %s' % (req.get_raw_uri(), req.get_full_path(), req.get_host()))
