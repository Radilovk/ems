.class final Lcom/isaigu/gymapp/widget/XemsLicenseClient$OfferLater;
.super Ljava/lang/Object;
.source "XemsLicenseClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsLicenseClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfferLater"
.end annotation


# instance fields
.field private final manual:Z

.field private final u:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;Z)V
    .registers 3

    .prologue
    .line 515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 516
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$OfferLater;->u:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;

    .line 517
    iput-boolean p2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$OfferLater;->manual:Z

    .line 518
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .prologue
    .line 522
    iget-boolean v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$OfferLater;->manual:Z

    if-nez v0, :cond_19

    .line 523
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "update_skipped"

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$OfferLater;->u:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;

    iget v2, v2, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->versionCode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 525
    :cond_19
    return-void
.end method
