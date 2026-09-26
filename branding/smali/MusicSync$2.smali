.class Lcom/isaigu/gymapp/train/utils/MusicSync$2;
.super Ljava/lang/Object;
.source "MusicSync.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/train/utils/MusicSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 152
    # invokes: Lcom/isaigu/gymapp/train/utils/MusicSync;->handleWriteComplete()V
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$100()V

    .line 153
    return-void
.end method
