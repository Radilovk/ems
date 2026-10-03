.class final Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Tick;
.super Ljava/lang/Object;
.source "ScaleStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleStage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Tick"
.end annotation


# instance fields
.field final v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleStage;)V
    .registers 2

    .prologue
    .line 822
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 823
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Tick;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    .line 824
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 828
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Tick;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    .line 833
    :goto_7
    return-void

    .line 831
    :cond_8
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Tick;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->scanTick()V

    .line 832
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Tick;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->main:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7
.end method
