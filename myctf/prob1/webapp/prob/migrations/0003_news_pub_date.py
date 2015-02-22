# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import datetime
from django.utils.timezone import utc


class Migration(migrations.Migration):

    dependencies = [
        ('prob', '0002_news'),
    ]

    operations = [
        migrations.AddField(
            model_name='news',
            name='pub_date',
            field=models.DateTimeField(default=datetime.datetime(2015, 2, 22, 5, 53, 19, 862674, tzinfo=utc), verbose_name=b'date published'),
            preserve_default=False,
        ),
    ]
