.class final Lcom/isaigu/gymapp/wearable/BandRemote$AppMsg;
.super Ljava/lang/Object;
.source "BandRemote.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/BandRemote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AppMsg"
.end annotation


# instance fields
.field private final json:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 518
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/BandRemote$AppMsg;->json:Ljava/lang/String;

    .line 519
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 524
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandRemote$AppMsg;->json:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandRemote;->handleApp(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    .line 528
    :goto_5
    return-void

    .line 525
    :catch_6
    move-exception v0

    .line 526
    const-string v1, "BandRemote.app"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method
