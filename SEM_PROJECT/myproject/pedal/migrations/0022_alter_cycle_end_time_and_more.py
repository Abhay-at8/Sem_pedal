# Generated by Django 4.2.5 on 2023-11-20 02:23

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('pedal', '0021_cycle_end_time_cycle_is_sold_cycle_sold_to_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='cycle',
            name='end_time',
            field=models.DateTimeField(default=datetime.datetime(2023, 11, 20, 7, 53, 44, 43345)),
        ),
        migrations.AlterField(
            model_name='transaction',
            name='transaction_time',
            field=models.DateTimeField(default=datetime.datetime(2023, 11, 20, 7, 53, 44, 49289)),
        ),
    ]
