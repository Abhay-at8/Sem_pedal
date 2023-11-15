# Generated by Django 4.2.5 on 2023-11-14 15:54

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('pedal', '0016_cycle_description_cycle_is_avail_cycle_no_of_rents_and_more'),
        ('chat', '0002_room_user'),
    ]

    operations = [
        migrations.AlterField(
            model_name='room',
            name='user',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='pedal.appuser'),
        ),
    ]
