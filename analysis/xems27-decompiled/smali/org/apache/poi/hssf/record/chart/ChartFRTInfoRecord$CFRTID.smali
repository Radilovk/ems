.class final Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord$CFRTID;
.super Ljava/lang/Object;
.source "ChartFRTInfoRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CFRTID"
.end annotation


# static fields
.field public static final ENCODED_SIZE:I = 0x4


# instance fields
.field private rtFirst:I

.field private rtLast:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord$CFRTID;->rtFirst:I

    .line 47
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord$CFRTID;->rtLast:I

    .line 48
    return-void
.end method


# virtual methods
.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 51
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord$CFRTID;->rtFirst:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 52
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord$CFRTID;->rtLast:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 53
    return-void
.end method
