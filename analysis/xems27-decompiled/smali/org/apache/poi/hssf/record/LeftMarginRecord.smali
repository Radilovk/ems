.class public final Lorg/apache/poi/hssf/record/LeftMarginRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "LeftMarginRecord.java"

# interfaces
.implements Lorg/apache/poi/hssf/record/Margin;


# static fields
.field public static final sid:S = 0x26s


# instance fields
.field private field_1_margin:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 2
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 35
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 36
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/LeftMarginRecord;->field_1_margin:D

    .line 37
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .line 77
    new-instance v0, Lorg/apache/poi/hssf/record/LeftMarginRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/LeftMarginRecord;-><init>()V

    .line 78
    .local v0, "rec":Lorg/apache/poi/hssf/record/LeftMarginRecord;
    iget-wide v1, p0, Lorg/apache/poi/hssf/record/LeftMarginRecord;->field_1_margin:D

    iput-wide v1, v0, Lorg/apache/poi/hssf/record/LeftMarginRecord;->field_1_margin:D

    .line 79
    return-object v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 53
    const/16 v0, 0x8

    return v0
.end method

.method public getMargin()D
    .locals 2

    .line 64
    iget-wide v0, p0, Lorg/apache/poi/hssf/record/LeftMarginRecord;->field_1_margin:D

    return-wide v0
.end method

.method public getSid()S
    .locals 1

    .line 57
    const/16 v0, 0x26

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 49
    iget-wide v0, p0, Lorg/apache/poi/hssf/record/LeftMarginRecord;->field_1_margin:D

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeDouble(D)V

    .line 50
    return-void
.end method

.method public setMargin(D)V
    .locals 0
    .param p1, "field_1_margin"    # D

    .line 72
    iput-wide p1, p0, Lorg/apache/poi/hssf/record/LeftMarginRecord;->field_1_margin:D

    .line 73
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 41
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 42
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[LeftMargin]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    const-string v1, "    .margin               = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/LeftMarginRecord;->getMargin()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v1, " )\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    const-string v1, "[/LeftMargin]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
