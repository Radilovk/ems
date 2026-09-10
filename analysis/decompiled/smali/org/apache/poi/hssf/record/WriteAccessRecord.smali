.class public final Lorg/apache/poi/hssf/record/WriteAccessRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "WriteAccessRecord.java"


# static fields
.field private static final DATA_SIZE:I = 0x70

.field private static final PADDING:[B

.field private static final PAD_CHAR:B = 0x20t

.field public static final sid:S = 0x5cs


# instance fields
.field private field_1_username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    const/16 v0, 0x70

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/poi/hssf/record/WriteAccessRecord;->PADDING:[B

    .line 46
    sget-object v0, Lorg/apache/poi/hssf/record/WriteAccessRecord;->PADDING:[B

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 50
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/WriteAccessRecord;->setUsername(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 9
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .prologue
    const/16 v7, 0x70

    .line 53
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 54
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v6

    if-le v6, v7, :cond_0

    .line 55
    new-instance v6, Lorg/apache/poi/hssf/record/RecordFormatException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expected data size (112) but got ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 61
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v2

    .line 62
    .local v2, "nChars":I
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v1

    .line 63
    .local v1, "is16BitFlag":I
    if-gt v2, v7, :cond_1

    and-int/lit16 v6, v1, 0xfe

    if-eqz v6, :cond_3

    .line 67
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v6

    add-int/lit8 v6, v6, 0x3

    new-array v0, v6, [B

    .line 68
    .local v0, "data":[B
    const/4 v6, 0x0

    invoke-static {v0, v6, v2}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    .line 69
    const/4 v6, 0x2

    invoke-static {v0, v6, v1}, Lorg/apache/poi/util/LittleEndian;->putByte([BII)V

    .line 70
    const/4 v6, 0x3

    array-length v7, v0

    add-int/lit8 v7, v7, -0x3

    invoke-virtual {p1, v0, v6, v7}, Lorg/apache/poi/hssf/record/RecordInputStream;->readFully([BII)V

    .line 71
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    .line 72
    .local v5, "rawValue":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/apache/poi/hssf/record/WriteAccessRecord;->setUsername(Ljava/lang/String;)V

    .line 91
    .end local v0    # "data":[B
    .end local v5    # "rawValue":Ljava/lang/String;
    :cond_2
    return-void

    .line 77
    :cond_3
    and-int/lit8 v6, v1, 0x1

    if-nez v6, :cond_4

    .line 78
    invoke-static {p1, v2}, Lorg/apache/poi/util/StringUtil;->readCompressedUnicode(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, "rawText":Ljava/lang/String;
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/poi/hssf/record/WriteAccessRecord;->field_1_username:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v3

    .line 86
    .local v3, "padSize":I
    :goto_1
    if-lez v3, :cond_2

    .line 88
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    .line 89
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 80
    .end local v3    # "padSize":I
    .end local v4    # "rawText":Ljava/lang/String;
    :cond_4
    invoke-static {p1, v2}, Lorg/apache/poi/util/StringUtil;->readUnicodeLE(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "rawText":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method protected getDataSize()I
    .locals 1

    .prologue
    .line 147
    const/16 v0, 0x70

    return v0
.end method

.method public getSid()S
    .locals 1

    .prologue
    .line 151
    const/16 v0, 0x5c

    return v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/apache/poi/hssf/record/WriteAccessRecord;->field_1_username:Ljava/lang/String;

    return-object v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 7
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 131
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WriteAccessRecord;->getUsername()Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, "username":Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result v1

    .line 134
    .local v1, "is16bit":Z
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-interface {p1, v4}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 135
    if-eqz v1, :cond_1

    move v4, v5

    :goto_0
    invoke-interface {p1, v4}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 136
    if-eqz v1, :cond_2

    .line 137
    invoke-static {v3, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 141
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v1, :cond_0

    const/4 v5, 0x2

    :cond_0
    mul-int/2addr v4, v5

    add-int/lit8 v0, v4, 0x3

    .line 142
    .local v0, "encodedByteCount":I
    rsub-int/lit8 v2, v0, 0x70

    .line 143
    .local v2, "paddingSize":I
    sget-object v4, Lorg/apache/poi/hssf/record/WriteAccessRecord;->PADDING:[B

    invoke-interface {p1, v4, v6, v2}, Lorg/apache/poi/util/LittleEndianOutput;->write([BII)V

    .line 144
    return-void

    .end local v0    # "encodedByteCount":I
    .end local v2    # "paddingSize":I
    :cond_1
    move v4, v6

    .line 135
    goto :goto_0

    .line 139
    :cond_2
    invoke-static {v3, p1}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    goto :goto_1
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 6
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-static {p1}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result v1

    .line 101
    .local v1, "is16bit":Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v1, :cond_0

    const/4 v3, 0x2

    :goto_0
    mul-int/2addr v3, v4

    add-int/lit8 v0, v3, 0x3

    .line 102
    .local v0, "encodedByteCount":I
    rsub-int/lit8 v2, v0, 0x70

    .line 103
    .local v2, "paddingSize":I
    if-gez v2, :cond_1

    .line 104
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Name is too long: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 101
    .end local v0    # "encodedByteCount":I
    .end local v2    # "paddingSize":I
    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    .line 107
    .restart local v0    # "encodedByteCount":I
    .restart local v2    # "paddingSize":I
    :cond_1
    iput-object p1, p0, Lorg/apache/poi/hssf/record/WriteAccessRecord;->field_1_username:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 124
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[WRITEACCESS]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    const-string v1, "    .name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/hssf/record/WriteAccessRecord;->field_1_username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    const-string v1, "[/WRITEACCESS]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
