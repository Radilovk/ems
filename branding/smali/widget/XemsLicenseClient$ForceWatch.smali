.class final Lcom/isaigu/gymapp/widget/XemsLicenseClient$ForceWatch;
.super Ljava/lang/Object;
.source "XemsLicenseClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsLicenseClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ForceWatch"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .prologue
    .line 502
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/widget/XemsLicenseClient;->forcing:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->access$802(Z)Z

    .line 503
    return-void
.end method
