# Generated by Django 4.2.5 on 2023-11-20 18:53

import datetime
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('pedal', '0031_rent_rating_alter_cycle_end_time_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='cycle',
            name='end_time',
            field=models.DateTimeField(default=datetime.datetime(2023, 11, 21, 0, 23, 25, 217370)),
        ),
        migrations.AlterField(
            model_name='transaction',
            name='transaction_time',
            field=models.DateTimeField(default=datetime.datetime(2023, 11, 21, 0, 23, 25, 217370)),
        ),
        migrations.AlterField(
            model_name='wallettransaction',
            name='transaction_time',
            field=models.DateTimeField(default=datetime.datetime(2023, 11, 21, 0, 23, 25, 217370)),
        ),
        migrations.CreateModel(
            name='Reviews',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('review_date', models.DateField()),
                ('rating', models.IntegerField()),
                ('text_description', models.CharField(max_length=5000)),
                ('author', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='pedal.appuser')),
                ('cycle', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='pedal.cycle')),
            ],
        ),
    ]
