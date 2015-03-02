# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('prob', '0003_news_pub_date'),
    ]

    operations = [
        migrations.AlterField(
            model_name='news',
            name='text',
            field=models.CharField(max_length=100),
            preserve_default=True,
        ),
    ]
