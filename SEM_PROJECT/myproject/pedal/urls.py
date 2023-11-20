from django.urls import path

from . import views

urlpatterns = [
    path("", views.index, name="index"),
    path("index", views.index, name="index"),
    path("login", views.login_user, name="login_user"),
    path("register", views.register_user, name="register_user"),
    path("logout", views.logout_user, name="logout_user"),
    path("sell", views.sell, name="sell"),
    path("history", views.history, name="history"),
    path("wallet", views.wallet, name="wallet"),
    path("shops", views.shops, name="shops"),
    path("buy", views.buy, name="buy"),
    path("checkout", views.checkout, name="checkout"),
    path("details/<int:id>", views.details, name="details"),
    path("payments", views.payments, name="payments"),
    path("rentedBikes", views.rented_bikes, name="rented_bikes"),
    path("ownedBikes", views.owned_bikes, name="owned_bikes"),
    path("lend", views.lend, name="lend"),
    path("deposit", views.deposit, name="deposit"),
    path("rating", views.rating, name="rating")
    

]