.class final Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;
.super Ljava/lang/Object;
.source "XiaomiBandSppFrames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Packet"
.end annotation


# instance fields
.field channel:I

.field dataType:I

.field kind:I

.field opcode:I

.field payload:[B

.field seq:I

.field size:I

.field type:I

.field version:I


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
