.class public final Lcom/isaigu/gymapp/wearable/BandLaunchActivity;
.super Landroid/app/Activity;
.source "BandLaunchActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/BandLaunch;->request(Landroid/app/Activity;)V

    .line 15
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/BandLaunchActivity;->finish()V

    .line 16
    return-void
.end method
