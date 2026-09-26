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

    .line 857
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 858
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/BandRemote$AppMsg;->json:Ljava/lang/String;

    .line 859
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 864
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandRemote$AppMsg;->json:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandRemote;->handleApp(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    .line 867
    goto :goto_c

    .line 865
    :catchall_6
    move-exception v0

    .line 866
    const-string v1, "BandRemote.app"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 868
    :goto_c
    return-void
.end method
