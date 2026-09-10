.class public Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;
.super Ljava/lang/Object;
.source "UnicodeString.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/record/common/UnicodeString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtRst"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;",
        ">;"
    }
.end annotation


# instance fields
.field private extraData:[B

.field private formattingFontIndex:S

.field private formattingOptions:S

.field private numberOfRuns:I

.field private phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

.field private phoneticText:Ljava/lang/String;

.field private reserved:S


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->populateEmpty()V

    .line 140
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/util/LittleEndianInput;I)V
    .locals 10
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;
    .param p2, "expectedLength"    # I

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->reserved:S

    .line 145
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 146
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->populateEmpty()V

    .line 147
    return-void

    .line 151
    :cond_0
    const/4 v1, 0x5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    .line 152
    invoke-static {}, Lorg/apache/poi/hssf/record/common/UnicodeString;->access$000()Lorg/apache/poi/util/POILogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning - ExtRst has wrong magic marker, expecting 1 but found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v3, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->reserved:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " - ignoring"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 154
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v1, p2, -0x2

    if-ge v0, v1, :cond_1

    .line 155
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    .end local v0    # "i":I
    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->populateEmpty()V

    .line 159
    return-void

    .line 163
    :cond_2
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v0

    .line 165
    .local v0, "stringDataSize":S
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v2

    iput-short v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingFontIndex:S

    .line 166
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v2

    iput-short v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingOptions:S

    .line 169
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v2

    iput v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->numberOfRuns:I

    .line 170
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v2

    .line 173
    .local v2, "length1":S
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v3

    .line 175
    .local v3, "length2":S
    if-nez v2, :cond_3

    if-lez v3, :cond_3

    .line 176
    const/4 v3, 0x0

    .line 178
    :cond_3
    if-ne v2, v3, :cond_7

    .line 184
    invoke-static {p1, v2}, Lorg/apache/poi/util/StringUtil;->readUnicodeLE(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phoneticText:Ljava/lang/String;

    .line 186
    add-int/lit8 v5, v0, -0x4

    add-int/lit8 v5, v5, -0x6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v5, v4

    .line 187
    .local v5, "runData":I
    div-int/lit8 v4, v5, 0x6

    .line 188
    .local v4, "numRuns":I
    new-array v6, v4, [Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    iput-object v6, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    .line 189
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    iget-object v7, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    array-length v8, v7

    if-ge v6, v8, :cond_4

    .line 190
    new-instance v8, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    const/4 v9, 0x0

    invoke-direct {v8, p1, v9}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;-><init>(Lorg/apache/poi/util/LittleEndianInput;Lorg/apache/poi/hssf/record/common/UnicodeString$1;)V

    aput-object v8, v7, v6

    .line 189
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 193
    .end local v6    # "i":I
    :cond_4
    mul-int/lit8 v6, v4, 0x6

    sub-int v6, v5, v6

    .line 194
    .local v6, "extraDataLength":I
    if-gez v6, :cond_5

    .line 195
    invoke-static {}, Lorg/apache/poi/hssf/record/common/UnicodeString;->access$000()Lorg/apache/poi/util/POILogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Warning - ExtRst overran by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rsub-int/lit8 v9, v6, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " bytes"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 196
    const/4 v6, 0x0

    .line 198
    :cond_5
    new-array v1, v6, [B

    iput-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->extraData:[B

    .line 199
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v7, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->extraData:[B

    array-length v8, v7

    if-ge v1, v8, :cond_6

    .line 200
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v8

    aput-byte v8, v7, v1

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 202
    .end local v1    # "i":I
    :cond_6
    return-void

    .line 179
    .end local v4    # "numRuns":I
    .end local v5    # "runData":I
    .end local v6    # "extraDataLength":I
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The two length fields of the Phonetic Text don\'t agree! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " vs "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private populateEmpty()V
    .locals 2

    .line 132
    const/4 v0, 0x1

    iput-short v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->reserved:S

    .line 133
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phoneticText:Ljava/lang/String;

    .line 134
    const/4 v0, 0x0

    new-array v1, v0, [Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    iput-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    .line 135
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->extraData:[B

    .line 136
    return-void
.end method


# virtual methods
.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->clone()Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    move-result-object v0

    return-object v0
.end method

.method protected clone()Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;
    .locals 7

    .line 292
    new-instance v0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;-><init>()V

    .line 293
    .local v0, "ext":Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;
    iget-short v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->reserved:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->reserved:S

    .line 294
    iget-short v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingFontIndex:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingFontIndex:S

    .line 295
    iget-short v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingOptions:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingOptions:S

    .line 296
    iget v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->numberOfRuns:I

    iput v1, v0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->numberOfRuns:I

    .line 297
    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phoneticText:Ljava/lang/String;

    iput-object v1, v0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phoneticText:Ljava/lang/String;

    .line 298
    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    array-length v1, v1

    new-array v1, v1, [Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    iput-object v1, v0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    .line 299
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, v0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 300
    new-instance v3, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    iget-object v4, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    aget-object v4, v4, v1

    invoke-static {v4}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->access$300(Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;)I

    move-result v4

    iget-object v5, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    aget-object v5, v5, v1

    invoke-static {v5}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->access$400(Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;)I

    move-result v5

    iget-object v6, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    aget-object v6, v6, v1

    invoke-static {v6}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->access$500(Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;)I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;-><init>(III)V

    aput-object v3, v2, v1

    .line 299
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 306
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 115
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->compareTo(Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;)I
    .locals 4
    .param p1, "o"    # Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    .line 245
    iget-short v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->reserved:S

    iget-short v1, p1, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->reserved:S

    sub-int/2addr v0, v1

    .line 246
    .local v0, "result":I
    if-eqz v0, :cond_0

    return v0

    .line 247
    :cond_0
    iget-short v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingFontIndex:S

    iget-short v2, p1, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingFontIndex:S

    sub-int/2addr v1, v2

    .line 248
    .end local v0    # "result":I
    .local v1, "result":I
    if-eqz v1, :cond_1

    return v1

    .line 249
    :cond_1
    iget-short v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingOptions:S

    iget-short v2, p1, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingOptions:S

    sub-int/2addr v0, v2

    .line 250
    .end local v1    # "result":I
    .restart local v0    # "result":I
    if-eqz v0, :cond_2

    return v0

    .line 251
    :cond_2
    iget v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->numberOfRuns:I

    iget v2, p1, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->numberOfRuns:I

    sub-int/2addr v1, v2

    .line 252
    .end local v0    # "result":I
    .restart local v1    # "result":I
    if-eqz v1, :cond_3

    return v1

    .line 254
    :cond_3
    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phoneticText:Ljava/lang/String;

    iget-object v2, p1, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phoneticText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 255
    .end local v1    # "result":I
    .restart local v0    # "result":I
    if-eqz v0, :cond_4

    return v0

    .line 257
    :cond_4
    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    array-length v1, v1

    iget-object v2, p1, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    array-length v2, v2

    sub-int/2addr v1, v2

    .line 258
    .end local v0    # "result":I
    .restart local v1    # "result":I
    if-eqz v1, :cond_5

    return v1

    .line 259
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    array-length v3, v2

    if-ge v0, v3, :cond_9

    .line 260
    aget-object v2, v2, v0

    invoke-static {v2}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->access$300(Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;)I

    move-result v2

    iget-object v3, p1, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    aget-object v3, v3, v0

    invoke-static {v3}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->access$300(Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 261
    .end local v1    # "result":I
    .local v2, "result":I
    if-eqz v2, :cond_6

    return v2

    .line 262
    :cond_6
    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    aget-object v1, v1, v0

    invoke-static {v1}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->access$400(Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;)I

    move-result v1

    iget-object v3, p1, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    aget-object v3, v3, v0

    invoke-static {v3}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->access$400(Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;)I

    move-result v3

    sub-int/2addr v1, v3

    .line 263
    .end local v2    # "result":I
    .restart local v1    # "result":I
    if-eqz v1, :cond_7

    return v1

    .line 264
    :cond_7
    iget-object v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    aget-object v2, v2, v0

    invoke-static {v2}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->access$500(Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;)I

    move-result v2

    iget-object v3, p1, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    aget-object v3, v3, v0

    invoke-static {v3}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->access$500(Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;)I

    move-result v3

    sub-int v1, v2, v3

    .line 265
    if-eqz v1, :cond_8

    return v1

    .line 259
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 268
    .end local v0    # "i":I
    :cond_9
    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->extraData:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iget-object v2, p1, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->extraData:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    sub-int/2addr v0, v2

    .line 270
    .end local v1    # "result":I
    .local v0, "result":I
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 236
    instance-of v0, p1, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 237
    return v1

    .line 239
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    .line 240
    .local v0, "other":Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->compareTo(Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected getDataSize()I
    .locals 2

    .line 208
    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phoneticText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->extraData:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getFormattingFontIndex()S
    .locals 1

    .line 310
    iget-short v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingFontIndex:S

    return v0
.end method

.method public getFormattingOptions()S
    .locals 1

    .line 313
    iget-short v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingOptions:S

    return v0
.end method

.method public getNumberOfRuns()I
    .locals 1

    .line 316
    iget v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->numberOfRuns:I

    return v0
.end method

.method public getPhRuns()[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;
    .locals 1

    .line 322
    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    return-object v0
.end method

.method public getPhoneticText()Ljava/lang/String;
    .locals 1

    .line 319
    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phoneticText:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .line 275
    iget-short v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->reserved:S

    .line 276
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-short v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingFontIndex:S

    add-int/2addr v1, v2

    .line 277
    .end local v0    # "hash":I
    .local v1, "hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-short v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingOptions:S

    add-int/2addr v0, v2

    .line 278
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->numberOfRuns:I

    add-int/2addr v1, v2

    .line 279
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phoneticText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 281
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    if-eqz v1, :cond_0

    .line 282
    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    .local v1, "arr$":[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 283
    .local v4, "ph":Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;
    mul-int/lit8 v5, v0, 0x1f

    invoke-static {v4}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->access$300(Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;)I

    move-result v6

    add-int/2addr v5, v6

    .line 284
    .end local v0    # "hash":I
    .local v5, "hash":I
    mul-int/lit8 v0, v5, 0x1f

    invoke-static {v4}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->access$400(Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;)I

    move-result v6

    add-int/2addr v0, v6

    .line 285
    .end local v5    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v5, v0, 0x1f

    invoke-static {v4}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->access$500(Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;)I

    move-result v6

    add-int v0, v5, v6

    .line 282
    .end local v4    # "ph":Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 288
    .end local v1    # "arr$":[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    return v0
.end method

.method protected serialize(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V
    .locals 4
    .param p1, "out"    # Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;

    .line 212
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->getDataSize()I

    move-result v0

    .line 214
    .local v0, "dataSize":I
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeContinueIfRequired(I)V

    .line 215
    iget-short v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->reserved:S

    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    .line 216
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    .line 217
    iget-short v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingFontIndex:S

    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    .line 218
    iget-short v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingOptions:S

    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    .line 220
    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeContinueIfRequired(I)V

    .line 221
    iget v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->numberOfRuns:I

    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    .line 222
    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phoneticText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    .line 223
    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phoneticText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    .line 225
    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phoneticText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeContinueIfRequired(I)V

    .line 226
    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phoneticText:Ljava/lang/String;

    invoke-static {v1, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 228
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 229
    aget-object v2, v2, v1

    invoke-static {v2, p1}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->access$200(Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 232
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->extraData:[B

    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->write([B)V

    .line 233
    return-void
.end method
