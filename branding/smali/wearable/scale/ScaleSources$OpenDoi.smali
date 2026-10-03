.class final Lcom/isaigu/gymapp/wearable/scale/ScaleSources$OpenDoi;
.super Ljava/lang/Object;
.source "ScaleSources.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OpenDoi"
.end annotation


# instance fields
.field final a:Landroid/app/Activity;

.field final doi:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$OpenDoi;->a:Landroid/app/Activity;

    .line 451
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$OpenDoi;->doi:Ljava/lang/String;

    .line 452
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    .prologue
    .line 456
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 458
    :try_start_3
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$OpenDoi;->a:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://doi.org/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$OpenDoi;->doi:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_28} :catch_29

    .line 462
    :goto_28
    return-void

    .line 459
    :catch_29
    move-exception v0

    .line 460
    const-string v1, "ScaleSources.doi"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_28
.end method
