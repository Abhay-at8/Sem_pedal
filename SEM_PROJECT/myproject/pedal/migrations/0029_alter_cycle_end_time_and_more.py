# Generated by Django 4.2.5 on 2023-11-21 14:48

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('pedal', '0028_rent_rating_alter_appuser_authuser_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='cycle',
            name='end_time',
            field=models.DateTimeField(default=datetime.datetime(2023, 11, 21, 20, 18, 56, 16847)),
        ),
        migrations.AlterField(
            model_name='transaction',
            name='transaction_time',
            field=models.DateTimeField(default=datetime.datetime(2023, 11, 21, 20, 18, 56, 16847)),
        ),
        migrations.AlterField(
            model_name='wallettransaction',
            name='transaction_time',
            field=models.DateTimeField(default=datetime.datetime(2023, 11, 21, 20, 18, 56, 16847)),
        ),
    ]
