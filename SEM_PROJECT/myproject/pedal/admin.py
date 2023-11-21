from django.contrib import admin
from .models import Cycle, AppUser, Order, Payment, Rent, Transaction, Wallet, WalletTransaction, Reviews
# Register your models here.
admin.site.register(Payment)
admin.site.register(WalletTransaction)