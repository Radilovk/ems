.class public final Lorg/apache/poi/hssf/record/CountryRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "CountryRecord.java"


# static fields
.field public static final sid:S = 0x8cs


# instance fields
.field private field_1_default_country:S

.field private field_2_current_country:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 48
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 49
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/CountryRecord;->field_1_default_country:S

    .line 50
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/CountryRecord;->field_2_current_country:S

    .line 51
    return-void
.end method


# virtual methods
.method public getCurrentCountry()S
    .locals 1

    .line 94
    iget-short v0, p0, Lorg/apache/poi/hssf/record/CountryRecord;->field_2_current_country:S

    return v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 116
    const/4 v0, 0x4

    return v0
.end method

.method public getDefaultCountry()S
    .locals 1

    .line 83
    iget-short v0, p0, Lorg/apache/poi/hssf/record/CountryRecord;->field_1_default_country:S

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 121
    const/16 v0, 0x8c

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 111
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CountryRecord;->getDefaultCountry()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 112
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CountryRecord;->getCurrentCountry()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 113
    return-void
.end method

.method public setCurrentCountry(S)V
    .locals 0
    .param p1, "country"    # S

    .line 72
    iput-short p1, p0, Lorg/apache/poi/hssf/record/CountryRecord;->field_2_current_country:S

    .line 73
    return-void
.end method

.method public setDefaultCountry(S)V
    .locals 0
    .param p1, "country"    # S

    .line 61
    iput-short p1, p0, Lorg/apache/poi/hssf/record/CountryRecord;->field_1_default_country:S

    .line 62
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 99
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 101
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[COUNTRY]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    const-string v1, "    .defaultcountry  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CountryRecord;->getDefaultCountry()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    const-string v2, "    .currentcountry  = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CountryRecord;->getCurrentCountry()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    const-string v1, "[/COUNTRY]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
