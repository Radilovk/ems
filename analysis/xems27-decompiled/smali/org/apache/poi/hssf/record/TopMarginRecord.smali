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

    .line 31
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 2
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

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
    .locals 3

    .line 73
    new-instance v0, Lorg/apache/poi/hssf/record/TopMarginRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/TopMarginRecord;-><init>()V

    .line 74
    .local v0, "rec":Lorg/apache/poi/hssf/record/TopMarginRecord;
    iget-wide v1, p0, Lorg/apache/poi/hssf/record/TopMarginRecord;->field_1_margin:D

    iput-wide v1, v0, Lorg/apache/poi/hssf/record/TopMarginRecord;->field_1_margin:D

    .line 75
    return-object v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 55
    const/16 v0, 0x8

    return v0
.end method

.method public getMargin()D
    .locals 2

    .line 63
    iget-wide v0, p0, Lorg/apache/poi/hssf/record/TopMarginRecord;->field_1_margin:D

    return-wide v0
.end method

.method public getSid()S
    .locals 1

    .line 58
    const/16 v0, 0x28

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 51
    iget-wide v0, p0, Lorg/apache/poi/hssf/record/TopMarginRecord;->field_1_margin:D

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeDouble(D)V

    .line 52
    return-void
.end method

.method public setMargin(D)V
    .locals 0
    .param p1, "field_1_margin"    # D

    .line 69
    iput-wide p1, p0, Lorg/apache/poi/hssf/record/TopMarginRecord;->field_1_margin:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

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

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/TopMarginRecord;->getMargin()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v1, " )\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    const-string v1, "[/TopMargin]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
