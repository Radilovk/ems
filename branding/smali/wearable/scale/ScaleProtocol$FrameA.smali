.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$FrameA;
.super Ljava/lang/Object;
.source "ScaleProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FrameA"
.end annotation


# instance fields
.field public final payload:[B

.field public final seq:I

.field public final type:I


# direct methods
.method constructor <init>(II[B)V
    .registers 4

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$FrameA;->seq:I

    .line 74
    iput p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$FrameA;->type:I

    .line 75
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$FrameA;->payload:[B

    .line 76
    return-void
.end method
