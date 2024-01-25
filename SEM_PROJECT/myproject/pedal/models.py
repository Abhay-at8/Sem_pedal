from django.db import models
from django.utils import timezone
from django.contrib.auth.models import AbstractUser, PermissionsMixin
from .managers import CustomUserManager
from django.utils.translation import gettext_lazy as _
from django.contrib.auth.models import User
from datetime import datetime
from django.db.models.deletion import CASCADE


class Location(models.Model):
    # user = models.ForeignKey(User, on_delete=models.CASCADE)
    user = models.ForeignKey(User, blank=True, null=True, on_delete=models.CASCADE)
    latitude = models.DecimalField(max_digits=9, decimal_places=6)
    longitude = models.DecimalField(max_digits=9, decimal_places=6)


class AppUser(models.Model):
    authUser = models.ForeignKey(User, on_delete=models.CASCADE)
    profile_img = models.ImageField(
        upload_to="images/Users/", null=True, blank=True, default=None
    )
    address = models.CharField(max_length=100)
    phone = models.CharField(max_length=15)
    currently_renting = models.BooleanField(default=False)


class Cycle(models.Model):
    cycle_img = models.ImageField(null=True, blank=True, upload_to="images/")
    owner = models.ForeignKey(
        AppUser,
        blank=True,
        null=True,
        on_delete=models.SET_NULL,
        related_name="current_owner",
    )
    dop = models.DateTimeField("Date of Purchase")
    model = models.CharField(max_length=50)
    price = models.IntegerField()
    lend_or_sell = models.CharField(max_length=50)
    description = models.CharField(max_length=5000)
    is_avail = models.BooleanField(default=True)
    is_sold = models.BooleanField(default=False)
    is_being_rented = models.BooleanField(default=False)
    end_time = models.DateTimeField(default=datetime.now())
    description = models.CharField(max_length=5000, null=True, blank=True)
    no_of_rents = models.IntegerField(default=0)
    total_stars = models.IntegerField(default=0)
    sold_to = models.ForeignKey(
        AppUser,
        default=None,
        blank=True,
        null=True,
        on_delete=models.SET_NULL,
        related_name="cycle_buyer",
    )


class Order(models.Model):
    razorpay_order_id = models.CharField(unique=True, max_length=50)
    payment_staus = models.CharField(max_length=50)
    user = models.ForeignKey(AppUser, blank=True, null=True, on_delete=models.SET_NULL)
    cycle = models.ForeignKey(Cycle, blank=True, null=True, on_delete=models.SET_NULL)
    amount = models.IntegerField(default=0)


class Payment(models.Model):
    razorpay_payment_id = models.CharField(unique=True, max_length=50)
    razorpay_order_id = models.CharField(unique=True, max_length=50)
    razorpay_signature = models.CharField(max_length=1000)
    amount = models.IntegerField(default=0)


class Rent(models.Model):
    payment = models.ForeignKey(
        Payment, blank=True, null=True, on_delete=models.SET_NULL
    )
    user = models.ForeignKey(AppUser, blank=True, null=True, on_delete=models.SET_NULL)
    cycle = models.ForeignKey(Cycle, blank=True, null=True, on_delete=models.SET_NULL)
    start_time = models.DateTimeField()
    end_time = models.DateTimeField()
    is_avail = models.BooleanField(default=True)
    rating = models.IntegerField(default=None, null=True)


class Transaction(models.Model):
    payment = models.ForeignKey(
        Payment, blank=True, null=True, on_delete=models.SET_NULL
    )
    user = models.ForeignKey(
        AppUser,
        blank=True,
        null=True,
        on_delete=models.SET_NULL,
        related_name="first_party",
    )
    cycle = models.ForeignKey(Cycle, blank=True, null=True, on_delete=models.SET_NULL)
    transaction_with = models.ForeignKey(
        AppUser,
        blank=True,
        null=True,
        on_delete=models.SET_NULL,
        related_name="other_party",
    )
    transaction_time = models.DateTimeField(default=datetime.now())
    transaction_name = models.CharField(max_length=50)


class Wallet(models.Model):
    user = models.ForeignKey(AppUser, blank=True, null=True, on_delete=models.SET_NULL)
    balance = models.IntegerField(default=0)
    deposit_complete = models.BooleanField(default=False)
    deposit_amount = models.IntegerField(default=0)


class WalletTransaction(models.Model):
    wallet = models.ForeignKey(Wallet, blank=True, null=True, on_delete=models.SET_NULL)
    transaction = models.ForeignKey(
        Transaction, blank=True, null=True, on_delete=models.SET_NULL
    )
    amount = models.IntegerField(default=0)
    transaction_from = models.ForeignKey(
        AppUser,
        blank=True,
        null=True,
        on_delete=models.SET_NULL,
        related_name="transaction_from",
    )
    transaction_time = models.DateTimeField(default=datetime.now())
    transaction_name = models.CharField(max_length=50)


class Reviews(models.Model):
    author = models.ForeignKey(AppUser, on_delete=CASCADE)
    cycle = models.ForeignKey(Cycle, on_delete=CASCADE)
    review_date = models.DateField()
    rating = models.IntegerField()
    text_description = models.CharField(max_length=5000)
