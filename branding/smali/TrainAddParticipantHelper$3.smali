.class Lcom/isaigu/gymapp/train/TrainAddParticipantHelper$3;
.super Ljava/lang/Object;
.source "TrainAddParticipantHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 135
    invoke-static {}, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->refresh()V

    .line 136
    return-void
.end method
