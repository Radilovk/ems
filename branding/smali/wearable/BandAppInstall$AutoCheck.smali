.class final Lcom/isaigu/gymapp/wearable/BandAppInstall$AutoCheck;
.super Ljava/lang/Object;
.source "BandAppInstall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/BandAppInstall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AutoCheck"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 225
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->check()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    const-string v1, "BandAppInstall.check"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
