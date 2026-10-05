.class final Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$DeleteNow;
.super Ljava/lang/Object;
.source "ScaleScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DeleteNow"
.end annotation


# instance fields
.field final t:J

.field final v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;J)V
    .registers 4

    .prologue
    .line 2629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2630
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$DeleteNow;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    .line 2631
    iput-wide p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$DeleteNow;->t:J

    .line 2632
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 2636
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$DeleteNow;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$DeleteNow;->t:J

    invoke-virtual {v0, v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->deleteNow(J)V

    .line 2637
    return-void
.end method
