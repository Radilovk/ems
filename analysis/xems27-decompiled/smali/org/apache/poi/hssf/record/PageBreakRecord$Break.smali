.class public final Lorg/apache/poi/hssf/record/PageBreakRecord$Break;
.super Ljava/lang/Object;
.source "PageBreakRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/record/PageBreakRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Break"
.end annotation


# static fields
.field public static final ENCODED_SIZE:I = 0x6


# instance fields
.field public main:I

.field public subFrom:I

.field public subTo:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "main"    # I
    .param p2, "subFrom"    # I
    .param p3, "subTo"    # I

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->main:I

    .line 62
    iput p2, p0, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->subFrom:I

    .line 63
    iput p3, p0, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->subTo:I

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->main:I

    .line 68
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->subFrom:I

    .line 69
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->subTo:I

    .line 70
    return-void
.end method


# virtual methods
.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 73
    iget v0, p0, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->main:I

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 74
    iget v0, p0, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->subFrom:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 75
    iget v0, p0, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->subTo:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 76
    return-void
.end method
