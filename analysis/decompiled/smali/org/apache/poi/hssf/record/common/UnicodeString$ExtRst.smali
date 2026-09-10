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
        "Ljava/lang/Comparable",
        "<",
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

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->populateEmpty()V

    .line 140
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/util/LittleEndianInput;I)V
    .locals 11
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;
    .param p2, "expectedLength"    # I

    .prologue
    const/4 v10, 0x5

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v7

    iput-short v7, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->reserved:S

    .line 145
    iget-short v7, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->reserved:S

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    .line 146
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->populateEmpty()V

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-short v7, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->reserved:S

    const/4 v8, 0x1

    if-eq v7, v8, :cond_3

    .line 152
    invoke-static {}, Lorg/apache/poi/hssf/record/common/UnicodeString;->access$000()Lorg/apache/poi/util/POILogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Warning - ExtRst has wrong magic marker, expecting 1 but found "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-short v9, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->reserved:S

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - ignoring"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v10, v8}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 154
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    add-int/lit8 v7, p2, -0x2

    if-ge v1, v7, :cond_2

    .line 155
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 158
    :cond_2
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->populateEmpty()V

    goto :goto_0

    .line 163
    .end local v1    # "i":I
    :cond_3
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v6

    .line 165
    .local v6, "stringDataSize":S
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v7

    iput-short v7, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingFontIndex:S

    .line 166
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v7

    iput-short v7, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingOptions:S

    .line 169
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v7

    iput v7, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->numberOfRuns:I

    .line 170
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v2

    .line 173
    .local v2, "length1":S
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v3

    .line 175
    .local v3, "length2":S
    if-nez v2, :cond_4

    if-lez v3, :cond_4

    .line 176
    const/4 v3, 0x0

    .line 178
    :cond_4
    if-eq v2, v3, :cond_5

    .line 179
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The two length fields of the Phonetic Text don\'t agree! "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " vs "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 184
    :cond_5
    invoke-static {p1, v2}, Lorg/apache/poi/util/StringUtil;->readUnicodeLE(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phoneticText:Ljava/lang/String;

    .line 186
    add-int/lit8 v7, v6, -0x4

    add-int/lit8 v7, v7, -0x6

    iget-object v8, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phoneticText:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    sub-int v5, v7, v8

    .line 187
    .local v5, "runData":I
    div-int/lit8 v4, v5, 0x6

    .line 188
    .local v4, "numRuns":I
    new-array v7, v4, [Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    iput-object v7, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    .line 189
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v7, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    array-length v7, v7

    if-ge v1, v7, :cond_6

    .line 190
    iget-object v7, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    new-instance v8, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    const/4 v9, 0x0

    invoke-direct {v8, p1, v9}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;-><init>(Lorg/apache/poi/util/LittleEndianInput;Lorg/apache/poi/hssf/record/common/UnicodeString$1;)V

    aput-object v8, v7, v1

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 193
    :cond_6
    mul-int/lit8 v7, v4, 0x6

    sub-int v0, v5, v7

    .line 194
    .local v0, "extraDataLength":I
    if-gez v0, :cond_7

    .line 195
    invoke-static {}, Lorg/apache/poi/hssf/record/common/UnicodeString;->access$000()Lorg/apache/poi/util/POILogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Warning - ExtRst overran by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    rsub-int/lit8 v9, v0, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bytes"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v10, v8}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 196
    const/4 v0, 0x0

    .line 198
    :cond_7
    new-array v7, v0, [B

    iput-object v7, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->extraData:[B

    .line 199
    const/4 v1, 0x0

    :goto_3
    iget-object v7, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->extraData:[B

    array-length v7, v7

    if-ge v1, v7, :cond_0

    .line 200
    iget-object v7, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->extraData:[B

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v8

    aput-byte v8, v7, v1

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method private populateEmpty()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 132
    const/4 v0, 0x1

    iput-short v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->reserved:S

    .line 133
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phoneticText:Ljava/lang/String;

    .line 134
    new-array v0, v1, [Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    .line 135
    new-array v0, v1, [B

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

    .prologue
    .line 115
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->clone()Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    move-result-object v0

    return-object v0
.end method

.method protected clone()Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;
    .locals 7

    .prologue
    .line 292
    new-instance v0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;-><init>()V

    .line 293
    .local v0, "ext":Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;
    iget-short v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->reserved:S

    iput-short v2, v0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->reserved:S

    .line 294
    iget-short v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingFontIndex:S

    iput-short v2, v0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingFontIndex:S

    .line 295
    iget-short v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingOptions:S

    iput-short v2, v0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingOptions:S

    .line 296
    iget v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->numberOfRuns:I

    iput v2, v0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->numberOfRuns:I

    .line 297
    iget-object v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phoneticText:Ljava/lang/String;

    iput-object v2, v0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phoneticText:Ljava/lang/String;

    .line 298
    iget-object v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    array-length v2, v2

    new-array v2, v2, [Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    iput-object v2, v0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    .line 299
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, v0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 300
    iget-object v2, v0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

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
    :cond_0
    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 115
    check-cast p1, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->compareTo(Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;)I
    .locals 6
    .param p1, "o"    # Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    .prologue
    .line 245
    iget-short v4, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->reserved:S

    iget-short v5, p1, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->reserved:S

    sub-int v1, v4, v5

    .line 246
    .local v1, "result":I
    if-eqz v1, :cond_0

    move v2, v1

    .end local v1    # "result":I
    .local v2, "result":I
    move v3, v1

    .line 270
    .end local v2    # "result":I
    .local v3, "result":I
    :goto_0
    return v3

    .line 247
    .end local v3    # "result":I
    .restart local v1    # "result":I
    :cond_0
    iget-short v4, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingFontIndex:S

    iget-short v5, p1, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingFontIndex:S

    sub-int v1, v4, v5

    .line 248
    if-eqz v1, :cond_1

    move v2, v1

    .end local v1    # "result":I
    .restart local v2    # "result":I
    move v3, v1

    .end local v2    # "result":I
    .restart local v3    # "result":I
    goto :goto_0

    .line 249
    .end local v3    # "result":I
    .restart local v1    # "result":I
    :cond_1
    iget-short v4, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingOptions:S

    iget-short v5, p1, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingOptions:S

    sub-int v1, v4, v5

    .line 250
    if-eqz v1, :cond_2

    move v2, v1

    .end local v1    # "result":I
    .restart local v2    # "result":I
    move v3, v1

    .end local v2    # "result":I
    .restart local v3    # "result":I
    goto :goto_0

    .line 251
    .end local v3    # "result":I
    .restart local v1    # "result":I
    :cond_2
    iget v4, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->numberOfRuns:I

    iget v5, p1, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->numberOfRuns:I

    sub-int v1, v4, v5

    .line 252
    if-eqz v1, :cond_3

    move v2, v1

    .end local v1    # "result":I
    .restart local v2    # "result":I
    move v3, v1

    .end local v2    # "result":I
    .restart local v3    # "result":I
    goto :goto_0

    .line 254
    .end local v3    # "result":I
    .restart local v1    # "result":I
    :cond_3
    iget-object v4, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phoneticText:Ljava/lang/String;

    iget-object v5, p1, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phoneticText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    .line 255
    if-eqz v1, :cond_4

    move v2, v1

    .end local v1    # "result":I
    .restart local v2    # "result":I
    move v3, v1

    .end local v2    # "result":I
    .restart local v3    # "result":I
    goto :goto_0

    .line 257
    .end local v3    # "result":I
    .restart local v1    # "result":I
    :cond_4
    iget-object v4, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    array-length v4, v4

    iget-object v5, p1, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    array-length v5, v5

    sub-int v1, v4, v5

    .line 258
    if-eqz v1, :cond_5

    move v2, v1

    .end local v1    # "result":I
    .restart local v2    # "result":I
    move v3, v1

    .end local v2    # "result":I
    .restart local v3    # "result":I
    goto :goto_0

    .line 259
    .end local v3    # "result":I
    .restart local v1    # "result":I
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    array-length v4, v4

    if-ge v0, v4, :cond_9

    .line 260
    iget-object v4, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    aget-object v4, v4, v0

    invoke-static {v4}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->access$300(Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;)I

    move-result v4

    iget-object v5, p1, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    aget-object v5, v5, v0

    invoke-static {v5}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->access$300(Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;)I

    move-result v5

    sub-int v1, v4, v5

    .line 261
    if-eqz v1, :cond_6

    move v2, v1

    .end local v1    # "result":I
    .restart local v2    # "result":I
    move v3, v1

    .end local v2    # "result":I
    .restart local v3    # "result":I
    goto :goto_0

    .line 262
    .end local v3    # "result":I
    .restart local v1    # "result":I
    :cond_6
    iget-object v4, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    aget-object v4, v4, v0

    invoke-static {v4}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->access$400(Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;)I

    move-result v4

    iget-object v5, p1, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    aget-object v5, v5, v0

    invoke-static {v5}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->access$400(Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;)I

    move-result v5

    sub-int v1, v4, v5

    .line 263
    if-eqz v1, :cond_7

    move v2, v1

    .end local v1    # "result":I
    .restart local v2    # "result":I
    move v3, v1

    .end local v2    # "result":I
    .restart local v3    # "result":I
    goto :goto_0

    .line 264
    .end local v3    # "result":I
    .restart local v1    # "result":I
    :cond_7
    iget-object v4, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    aget-object v4, v4, v0

    invoke-static {v4}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->access$500(Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;)I

    move-result v4

    iget-object v5, p1, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    aget-object v5, v5, v0

    invoke-static {v5}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->access$500(Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;)I

    move-result v5

    sub-int v1, v4, v5

    .line 265
    if-eqz v1, :cond_8

    move v2, v1

    .end local v1    # "result":I
    .restart local v2    # "result":I
    move v3, v1

    .end local v2    # "result":I
    .restart local v3    # "result":I
    goto/16 :goto_0

    .line 259
    .end local v3    # "result":I
    .restart local v1    # "result":I
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 268
    :cond_9
    iget-object v4, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->extraData:[B

    invoke-static {v4}, Ljava/util/Arrays;->hashCode([B)I

    move-result v4

    iget-object v5, p1, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->extraData:[B

    invoke-static {v5}, Ljava/util/Arrays;->hashCode([B)I

    move-result v5

    sub-int v1, v4, v5

    move v2, v1

    .end local v1    # "result":I
    .restart local v2    # "result":I
    move v3, v1

    .line 270
    .end local v2    # "result":I
    .restart local v3    # "result":I
    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 236
    instance-of v2, p1, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    if-nez v2, :cond_1

    .line 240
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 239
    check-cast v0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    .line 240
    .local v0, "other":Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->compareTo(Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected getDataSize()I
    .locals 2

    .prologue
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

    .prologue
    .line 310
    iget-short v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingFontIndex:S

    return v0
.end method

.method public getFormattingOptions()S
    .locals 1

    .prologue
    .line 313
    iget-short v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingOptions:S

    return v0
.end method

.method public getNumberOfRuns()I
    .locals 1

    .prologue
    .line 316
    iget v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->numberOfRuns:I

    return v0
.end method

.method public getPhRuns()[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    return-object v0
.end method

.method public getPhoneticText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phoneticText:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 275
    iget-short v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->reserved:S

    .line 276
    .local v1, "hash":I
    mul-int/lit8 v5, v1, 0x1f

    iget-short v6, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingFontIndex:S

    add-int v1, v5, v6

    .line 277
    mul-int/lit8 v5, v1, 0x1f

    iget-short v6, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingOptions:S

    add-int v1, v5, v6

    .line 278
    mul-int/lit8 v5, v1, 0x1f

    iget v6, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->numberOfRuns:I

    add-int v1, v5, v6

    .line 279
    mul-int/lit8 v5, v1, 0x1f

    iget-object v6, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phoneticText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    add-int v1, v5, v6

    .line 281
    iget-object v5, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    if-eqz v5, :cond_0

    .line 282
    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    .local v0, "arr$":[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 283
    .local v4, "ph":Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;
    mul-int/lit8 v5, v1, 0x1f

    invoke-static {v4}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->access$300(Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;)I

    move-result v6

    add-int v1, v5, v6

    .line 284
    mul-int/lit8 v5, v1, 0x1f

    invoke-static {v4}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->access$400(Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;)I

    move-result v6

    add-int v1, v5, v6

    .line 285
    mul-int/lit8 v5, v1, 0x1f

    invoke-static {v4}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->access$500(Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;)I

    move-result v6

    add-int v1, v5, v6

    .line 282
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 288
    .end local v0    # "arr$":[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "ph":Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;
    :cond_0
    return v1
.end method

.method protected serialize(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V
    .locals 3
    .param p1, "out"    # Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;

    .prologue
    .line 212
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->getDataSize()I

    move-result v0

    .line 214
    .local v0, "dataSize":I
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeContinueIfRequired(I)V

    .line 215
    iget-short v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->reserved:S

    invoke-virtual {p1, v2}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    .line 216
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    .line 217
    iget-short v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingFontIndex:S

    invoke-virtual {p1, v2}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    .line 218
    iget-short v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingOptions:S

    invoke-virtual {p1, v2}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    .line 220
    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeContinueIfRequired(I)V

    .line 221
    iget v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->numberOfRuns:I

    invoke-virtual {p1, v2}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    .line 222
    iget-object v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phoneticText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    .line 223
    iget-object v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phoneticText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    .line 225
    iget-object v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phoneticText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {p1, v2}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeContinueIfRequired(I)V

    .line 226
    iget-object v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phoneticText:Ljava/lang/String;

    invoke-static {v2, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 228
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 229
    iget-object v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    aget-object v2, v2, v1

    invoke-static {v2, p1}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->access$200(Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 232
    :cond_0
    iget-object v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->extraData:[B

    invoke-virtual {p1, v2}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->write([B)V

    .line 233
    return-void
.end method
