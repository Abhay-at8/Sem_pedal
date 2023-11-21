# Generated by Django 4.2.5 on 2023-11-20 20:16

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('pedal', '0033_alter_appuser_authuser_alter_cycle_end_time_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='cycle',
            name='end_time',
            field=models.DateTimeField(default=datetime.datetime(2023, 11, 21, 1, 46, 49, 174720)),
        ),
        migrations.AlterField(
            model_name='rent',
            name='rating',
            field=models.IntegerField(default=None, null=True),
        ),
        migrations.AlterField(
            model_name='transaction',
            name='transaction_time',
            field=models.DateTimeField(default=datetime.datetime(2023, 11, 21, 1, 46, 49, 174720)),
        ),
        migrations.AlterField(
            model_name='wallettransaction',
            name='transaction_time',
            field=models.DateTimeField(default=datetime.datetime(2023, 11, 21, 1, 46, 49, 174720)),
        ),
    ]