# Generated by Django 4.2.5 on 2023-11-13 11:53

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('pedal', '0005_alter_cycle_dop_alter_cycle_owner_id'),
    ]

    operations = [
        migrations.DeleteModel(
            name='Photo',
        ),
        migrations.AlterField(
            model_name='cycle',
            name='owner_id',
            field=models.IntegerField(default=11, verbose_name='Cyle Owner'),
        ),
    ]
