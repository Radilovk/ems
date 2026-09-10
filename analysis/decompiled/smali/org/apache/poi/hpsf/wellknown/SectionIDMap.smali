.class public Lorg/apache/poi/hpsf/wellknown/SectionIDMap;
.super Ljava/util/HashMap;
.source "SectionIDMap.java"


# static fields
.field public static final DOCUMENT_SUMMARY_INFORMATION_ID:[[B

.field public static final SUMMARY_INFORMATION_ID:[B

.field public static final UNDEFINED:Ljava/lang/String; = "[undefined]"

.field private static defaultMap:Lorg/apache/poi/hpsf/wellknown/SectionIDMap;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x10

    .line 44
    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->SUMMARY_INFORMATION_ID:[B

    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [[B

    const/4 v1, 0x0

    new-array v2, v3, [B

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [B

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->DOCUMENT_SUMMARY_INFORMATION_ID:[[B

    return-void

    .line 44
    nop

    :array_0
    .array-data 1
        -0xet
        -0x61t
        -0x7bt
        -0x20t
        0x4ft
        -0x7t
        0x10t
        0x68t
        -0x55t
        -0x6ft
        0x8t
        0x0t
        0x2bt
        0x27t
        -0x4dt
        -0x27t
    .end array-data

    .line 56
    :array_1
    .array-data 1
        -0x2bt
        -0x33t
        -0x2bt
        0x2t
        0x2et
        -0x64t
        0x10t
        0x1bt
        -0x6dt
        -0x69t
        0x8t
        0x0t
        0x2bt
        0x2ct
        -0x7t
        -0x52t
    .end array-data

    :array_2
    .array-data 1
        -0x2bt
        -0x33t
        -0x2bt
        0x5t
        0x2et
        -0x64t
        0x10t
        0x1bt
        -0x6dt
        -0x69t
        0x8t
        0x0t
        0x2bt
        0x2ct
        -0x7t
        -0x52t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/apache/poi/hpsf/wellknown/SectionIDMap;
    .locals 3

    .prologue
    .line 93
    sget-object v1, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->defaultMap:Lorg/apache/poi/hpsf/wellknown/SectionIDMap;

    if-nez v1, :cond_0

    .line 95
    new-instance v0, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;-><init>()V

    .line 96
    .local v0, "m":Lorg/apache/poi/hpsf/wellknown/SectionIDMap;
    sget-object v1, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->SUMMARY_INFORMATION_ID:[B

    invoke-static {}, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->getSummaryInformationProperties()Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->put([BLorg/apache/poi/hpsf/wellknown/PropertyIDMap;)Ljava/lang/Object;

    .line 98
    sget-object v1, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->DOCUMENT_SUMMARY_INFORMATION_ID:[[B

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {}, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->getDocumentSummaryInformationProperties()Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->put([BLorg/apache/poi/hpsf/wellknown/PropertyIDMap;)Ljava/lang/Object;

    .line 100
    sput-object v0, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->defaultMap:Lorg/apache/poi/hpsf/wellknown/SectionIDMap;

    .line 102
    :cond_0
    sget-object v1, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->defaultMap:Lorg/apache/poi/hpsf/wellknown/SectionIDMap;

    return-object v1
.end method

.method public static getPIDString([BJ)Ljava/lang/String;
    .locals 3
    .param p0, "sectionFormatID"    # [B
    .param p1, "pid"    # J

    .prologue
    .line 123
    invoke-static {}, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->getInstance()Lorg/apache/poi/hpsf/wellknown/SectionIDMap;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->get([B)Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    move-result-object v0

    .line 124
    .local v0, "m":Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;
    if-nez v0, :cond_1

    .line 125
    const-string v1, "[undefined]"

    .line 130
    :cond_0
    :goto_0
    return-object v1

    .line 127
    :cond_1
    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 128
    .local v1, "s":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 129
    const-string v1, "[undefined]"

    goto :goto_0
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "sectionFormatID"    # Ljava/lang/Object;

    .prologue
    .line 159
    check-cast p1, [B

    .end local p1    # "sectionFormatID":Ljava/lang/Object;
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->get([B)Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    move-result-object v0

    return-object v0
.end method

.method public get([B)Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;
    .locals 1
    .param p1, "sectionFormatID"    # [B

    .prologue
    .line 144
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-super {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 194
    check-cast p1, [B

    .end local p1    # "key":Ljava/lang/Object;
    check-cast p1, [B

    check-cast p2, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->put([BLorg/apache/poi/hpsf/wellknown/PropertyIDMap;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put([BLorg/apache/poi/hpsf/wellknown/PropertyIDMap;)Ljava/lang/Object;
    .locals 1
    .param p1, "sectionFormatID"    # [B
    .param p2, "propertyIDMap"    # Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    .prologue
    .line 175
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-super {p0, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
