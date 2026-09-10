.class public final Lorg/apache/poi/hssf/record/BottomMarginRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "BottomMarginRecord.java"

# interfaces
.implements Lorg/apache/poi/hssf/record/Margin;


# static fields
.field public static final sid:S = 0x29s


# instance fields
.field private field_1_margin:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 2
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 40
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 41
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/BottomMarginRecord;->field_1_margin:D

    .line 42
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .line 85
    new-instance v0, Lorg/apache/poi/hssf/record/BottomMarginRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/BottomMarginRecord;-><init>()V

    .line 86
    .local v0, "rec":Lorg/apache/poi/hssf/record/BottomMarginRecord;
    iget-wide v1, p0, Lorg/apache/poi/hssf/record/BottomMarginRecord;->field_1_margin:D

    iput-wide v1, v0, Lorg/apache/poi/hssf/record/BottomMarginRecord;->field_1_margin:D

    .line 87
    return-object v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 59
    const/16 v0, 0x8

    return v0
.end method

.method public getMargin()D
    .locals 2

    .line 72
    iget-wide v0, p0, Lorg/apache/poi/hssf/record/BottomMarginRecord;->field_1_margin:D

    return-wide v0
.end method

.method public getSid()S
    .locals 1

    .line 64
    const/16 v0, 0x29

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 55
    iget-wide v0, p0, Lorg/apache/poi/hssf/record/BottomMarginRecord;->field_1_margin:D

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeDouble(D)V

    .line 56
    return-void
.end method

.method public setMargin(D)V
    .locals 0
    .param p1, "field_1_margin"    # D

    .line 80
    iput-wide p1, p0, Lorg/apache/poi/hssf/record/BottomMarginRecord;->field_1_margin:D

    .line 81
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 46
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 47
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[BottomMargin]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    const-string v1, "    .margin               = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BottomMarginRecord;->getMargin()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v1, " )\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    const-string v1, "[/BottomMargin]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
