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

    .line 44
    const/16 v0, 0x70

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/poi/hssf/record/WriteAccessRecord;->PADDING:[B

    .line 46
    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 50
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/WriteAccessRecord;->setUsername(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 5
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 53
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 54
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    const/16 v1, 0x70

    if-gt v0, v1, :cond_4

    .line 61
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    .line 62
    .local v0, "nChars":I
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v2

    .line 63
    .local v2, "is16BitFlag":I
    if-gt v0, v1, :cond_3

    and-int/lit16 v1, v2, 0xfe

    if-eqz v1, :cond_0

    goto :goto_2

    .line 77
    :cond_0
    and-int/lit8 v1, v2, 0x1

    if-nez v1, :cond_1

    .line 78
    invoke-static {p1, v0}, Lorg/apache/poi/util/StringUtil;->readCompressedUnicode(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v1

    .local v1, "rawText":Ljava/lang/String;
    goto :goto_0

    .line 80
    .end local v1    # "rawText":Ljava/lang/String;
    :cond_1
    invoke-static {p1, v0}, Lorg/apache/poi/util/StringUtil;->readUnicodeLE(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v1

    .line 82
    .restart local v1    # "rawText":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/poi/hssf/record/WriteAccessRecord;->field_1_username:Ljava/lang/String;

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

    .line 91
    :cond_2
    return-void

    .line 67
    .end local v1    # "rawText":Ljava/lang/String;
    .end local v3    # "padSize":I
    :cond_3
    :goto_2
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v1

    const/4 v3, 0x3

    add-int/2addr v1, v3

    new-array v1, v1, [B

    .line 68
    .local v1, "data":[B
    const/4 v4, 0x0

    invoke-static {v1, v4, v0}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    .line 69
    const/4 v4, 0x2

    invoke-static {v1, v4, v2}, Lorg/apache/poi/util/LittleEndian;->putByte([BII)V

    .line 70
    array-length v4, v1

    sub-int/2addr v4, v3

    invoke-virtual {p1, v1, v3, v4}, Lorg/apache/poi/hssf/record/RecordInputStream;->readFully([BII)V

    .line 71
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    .line 72
    .local v3, "rawValue":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/poi/hssf/record/WriteAccessRecord;->setUsername(Ljava/lang/String;)V

    .line 73
    return-void

    .line 55
    .end local v0    # "nChars":I
    .end local v1    # "data":[B
    .end local v2    # "is16BitFlag":I
    .end local v3    # "rawValue":Ljava/lang/String;
    :cond_4
    new-instance v0, Lorg/apache/poi/hssf/record/RecordFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected data size (112) but got ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected getDataSize()I
    .locals 1

    .line 147
    const/16 v0, 0x70

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 151
    const/16 v0, 0x5c

    return v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/apache/poi/hssf/record/WriteAccessRecord;->field_1_username:Ljava/lang/String;

    return-object v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 6
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 131
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WriteAccessRecord;->getUsername()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "username":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result v1

    .line 134
    .local v1, "is16bit":Z
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 135
    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 136
    if-eqz v1, :cond_0

    .line 137
    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    goto :goto_0

    .line 139
    :cond_0
    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 141
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    :goto_1
    mul-int v2, v2, v3

    add-int/lit8 v2, v2, 0x3

    .line 142
    .local v2, "encodedByteCount":I
    rsub-int/lit8 v3, v2, 0x70

    .line 143
    .local v3, "paddingSize":I
    sget-object v4, Lorg/apache/poi/hssf/record/WriteAccessRecord;->PADDING:[B

    const/4 v5, 0x0

    invoke-interface {p1, v4, v5, v3}, Lorg/apache/poi/util/LittleEndianOutput;->write([BII)V

    .line 144
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 6
    .param p1, "username"    # Ljava/lang/String;

    .line 100
    invoke-static {p1}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result v0

    .line 101
    .local v0, "is16bit":Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    mul-int v1, v1, v2

    add-int/lit8 v1, v1, 0x3

    .line 102
    .local v1, "encodedByteCount":I
    rsub-int/lit8 v2, v1, 0x70

    .line 103
    .local v2, "paddingSize":I
    if-ltz v2, :cond_1

    .line 107
    iput-object p1, p0, Lorg/apache/poi/hssf/record/WriteAccessRecord;->field_1_username:Ljava/lang/String;

    .line 108
    return-void

    .line 104
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Name is too long: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

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

    iget-object v1, p0, Lorg/apache/poi/hssf/record/WriteAccessRecord;->field_1_username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    const-string v1, "[/WRITEACCESS]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
