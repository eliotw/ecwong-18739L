# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('prob', '0004_auto_20150302_2225'),
    ]

    operations = [
        migrations.AddField(
            model_name='news',
            name='session',
            field=models.CharField(default='1', max_length=100),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='news',
            name='text',
            field=models.CharField(max_length=1000),
            preserve_default=True,
        ),
    ]
