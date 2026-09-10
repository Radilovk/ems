.class final Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput$1;
.super Ljava/lang/Object;
.source "ContinuableRecordOutput.java"

# interfaces
.implements Lorg/apache/poi/util/DelayableLittleEndianOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDelayedOutput(I)Lorg/apache/poi/util/LittleEndianOutput;
    .locals 0
    .param p1, "size"    # I

    .line 248
    return-object p0
.end method

.method public write([B)V
    .locals 0
    .param p1, "b"    # [B

    .line 252
    return-void
.end method

.method public write([BII)V
    .locals 0
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 255
    return-void
.end method

.method public writeByte(I)V
    .locals 0
    .param p1, "v"    # I

    .line 258
    return-void
.end method

.method public writeDouble(D)V
    .locals 0
    .param p1, "v"    # D

    .line 261
    return-void
.end method

.method public writeInt(I)V
    .locals 0
    .param p1, "v"    # I

    .line 264
    return-void
.end method

.method public writeLong(J)V
    .locals 0
    .param p1, "v"    # J

    .line 267
    return-void
.end method

.method public writeShort(I)V
    .locals 0
    .param p1, "v"    # I

    .line 270
    return-void
.end method
