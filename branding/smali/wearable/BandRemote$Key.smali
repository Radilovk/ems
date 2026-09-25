.class final Lcom/isaigu/gymapp/wearable/BandRemote$Key;
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
    name = "Key"
.end annotation


# instance fields
.field private final key:I

.field private final volume:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .prologue
    .line 788
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 789
    iput p1, p0, Lcom/isaigu/gymapp/wearable/BandRemote$Key;->key:I

    .line 790
    iput p2, p0, Lcom/isaigu/gymapp/wearable/BandRemote$Key;->volume:I

    .line 791
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 796
    :try_start_0
    iget v0, p0, Lcom/isaigu/gymapp/wearable/BandRemote$Key;->key:I

    iget v1, p0, Lcom/isaigu/gymapp/wearable/BandRemote$Key;->volume:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/BandRemote;->handleKey(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 800
    :goto_0
    return-void

    .line 797
    :catch_0
    move-exception v0

    .line 798
    const-string v1, "BandRemote.key"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
