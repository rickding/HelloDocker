# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models


class Log(models.Model):
    class Meta:
        db_table = 'log'

    ops = models.CharField(max_length=64, null=True, default=None)

    created = models.DateTimeField(auto_now_add=True, null=True)
