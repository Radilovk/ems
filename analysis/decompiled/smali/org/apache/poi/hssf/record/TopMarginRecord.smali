.class public final Lorg/apache/poi/hssf/record/TopMarginRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "TopMarginRecord.java"

# interfaces
.implements Lorg/apache/poi/hssf/record/Margin;


# static fields
.field public static final sid:S = 0x28s


# instance fields
.field private field_1_margin:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 2
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 38
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/TopMarginRecord;->field_1_margin:D

    .line 39
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 73
    new-instance v0, Lorg/apache/poi/hssf/record/TopMarginRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/TopMarginRecord;-><init>()V

    .line 74
    .local v0, "rec":Lorg/apache/poi/hssf/record/TopMarginRecord;
    iget-wide v2, p0, Lorg/apache/poi/hssf/record/TopMarginRecord;->field_1_margin:D

    iput-wide v2, v0, Lorg/apache/poi/hssf/record/TopMarginRecord;->field_1_margin:D

    .line 75
    return-object v0
.end method

.method protected getDataSize()I
    .locals 1

    .prologue
    .line 55
    const/16 v0, 0x8

    return v0
.end method

.method public getMargin()D
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lorg/apache/poi/hssf/record/TopMarginRecord;->field_1_margin:D

    return-wide v0
.end method

.method public getSid()S
    .locals 1

    .prologue
    .line 58
    const/16 v0, 0x28

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .prologue
    .line 51
    iget-wide v0, p0, Lorg/apache/poi/hssf/record/TopMarginRecord;->field_1_margin:D

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeDouble(D)V

    .line 52
    return-void
.end method

.method public setMargin(D)V
    .locals 1
    .param p1, "field_1_margin"    # D

    .prologue
    .line 69
    iput-wide p1, p0, Lorg/apache/poi/hssf/record/TopMarginRecord;->field_1_margin:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 44
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[TopMargin]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    const-string v1, "    .margin               = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/TopMarginRecord;->getMargin()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " )\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    const-string v1, "[/TopMargin]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
