.class final Lorg/apache/poi/hssf/record/RecordInputStream$SimpleHeaderInput;
.super Ljava/lang/Object;
.source "RecordInputStream.java"

# interfaces
.implements Lorg/apache/poi/hssf/record/BiffHeaderInput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/record/RecordInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SimpleHeaderInput"
.end annotation


# instance fields
.field private final _lei:Lorg/apache/poi/util/LittleEndianInput;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-static {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->getLEI(Ljava/io/InputStream;)Lorg/apache/poi/util/LittleEndianInput;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream$SimpleHeaderInput;->_lei:Lorg/apache/poi/util/LittleEndianInput;

    .line 90
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream$SimpleHeaderInput;->_lei:Lorg/apache/poi/util/LittleEndianInput;

    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->available()I

    move-result v0

    return v0
.end method

.method public readDataSize()I
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream$SimpleHeaderInput;->_lei:Lorg/apache/poi/util/LittleEndianInput;

    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    return v0
.end method

.method public readRecordSID()I
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream$SimpleHeaderInput;->_lei:Lorg/apache/poi/util/LittleEndianInput;

    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    return v0
.end method
