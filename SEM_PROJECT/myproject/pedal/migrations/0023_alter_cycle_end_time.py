# Generated by Django 4.2.5 on 2023-11-15 09:46

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('pedal', '0022_cycle_is_sold_alter_cycle_end_time'),
    ]

    operations = [
        migrations.AlterField(
            model_name='cycle',
            name='end_time',
            field=models.DateTimeField(default=datetime.datetime(2023, 11, 15, 15, 16, 7, 374918)),
        ),
    ]