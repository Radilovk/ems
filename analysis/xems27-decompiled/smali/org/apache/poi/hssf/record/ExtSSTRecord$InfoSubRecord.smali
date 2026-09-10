.class public final Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;
.super Ljava/lang/Object;
.source "ExtSSTRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/record/ExtSSTRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InfoSubRecord"
.end annotation


# static fields
.field public static final ENCODED_SIZE:I = 0x8


# instance fields
.field private field_1_stream_pos:I

.field private field_2_bucket_sst_offset:I

.field private field_3_zero:S


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "streamPos"    # I
    .param p2, "bucketSstOffset"    # I

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;->field_1_stream_pos:I

    .line 55
    iput p2, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;->field_2_bucket_sst_offset:I

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;->field_1_stream_pos:I

    .line 61
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;->field_2_bucket_sst_offset:I

    .line 62
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;->field_3_zero:S

    .line 63
    return-void
.end method


# virtual methods
.method public getBucketSSTOffset()I
    .locals 1

    .line 70
    iget v0, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;->field_2_bucket_sst_offset:I

    return v0
.end method

.method public getStreamPos()I
    .locals 1

    .line 66
    iget v0, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;->field_1_stream_pos:I

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 74
    iget v0, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;->field_1_stream_pos:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 75
    iget v0, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;->field_2_bucket_sst_offset:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 76
    iget-short v0, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;->field_3_zero:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 77
    return-void
.end method
