# Generated by Django 4.2.5 on 2023-11-18 09:37

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('pedal', '0028_alter_cycle_end_time_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='cycle',
            name='end_time',
            field=models.DateTimeField(default=datetime.datetime(2023, 11, 18, 15, 7, 1, 182899)),
        ),
        migrations.AlterField(
            model_name='transaction',
            name='transaction_time',
            field=models.DateTimeField(default=datetime.datetime(2023, 11, 18, 15, 7, 1, 182899)),
        ),
        migrations.AlterField(
            model_name='wallettransaction',
            name='transaction_time',
            field=models.DateTimeField(default=datetime.datetime(2023, 11, 18, 15, 7, 1, 182899)),
        ),
    ]