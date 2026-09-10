.class final Lorg/apache/poi/hssf/usermodel/HSSFPalette$CustomColor;
.super Lorg/apache/poi/hssf/util/HSSFColor;
.source "HSSFPalette.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/usermodel/HSSFPalette;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CustomColor"
.end annotation


# instance fields
.field private _blue:B

.field private _byteOffset:S

.field private _green:B

.field private _red:B


# direct methods
.method private constructor <init>(SBBB)V
    .locals 0
    .param p1, "byteOffset"    # S
    .param p2, "red"    # B
    .param p3, "green"    # B
    .param p4, "blue"    # B

    .prologue
    .line 190
    invoke-direct {p0}, Lorg/apache/poi/hssf/util/HSSFColor;-><init>()V

    .line 191
    iput-short p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFPalette$CustomColor;->_byteOffset:S

    .line 192
    iput-byte p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFPalette$CustomColor;->_red:B

    .line 193
    iput-byte p3, p0, Lorg/apache/poi/hssf/usermodel/HSSFPalette$CustomColor;->_green:B

    .line 194
    iput-byte p4, p0, Lorg/apache/poi/hssf/usermodel/HSSFPalette$CustomColor;->_blue:B

    .line 195
    return-void
.end method

.method public constructor <init>(S[B)V
    .locals 3
    .param p1, "byteOffset"    # S
    .param p2, "colors"    # [B

    .prologue
    .line 186
    const/4 v0, 0x0

    aget-byte v0, p2, v0

    const/4 v1, 0x1

    aget-byte v1, p2, v1

    const/4 v2, 0x2

    aget-byte v2, p2, v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFPalette$CustomColor;-><init>(SBBB)V

    .line 187
    return-void
.end method

.method private getGnumericPart(B)Ljava/lang/String;
    .locals 4
    .param p1, "color"    # B

    .prologue
    .line 229
    if-nez p1, :cond_1

    .line 231
    const-string v1, "0"

    .line 243
    .local v1, "s":Ljava/lang/String;
    :cond_0
    return-object v1

    .line 235
    .end local v1    # "s":Ljava/lang/String;
    :cond_1
    and-int/lit16 v0, p1, 0xff

    .line 236
    .local v0, "c":I
    shl-int/lit8 v2, v0, 0x8

    or-int/2addr v0, v2

    .line 237
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 238
    .restart local v1    # "s":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public getHexString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x3a

    .line 217
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 218
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-byte v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFPalette$CustomColor;->_red:B

    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFPalette$CustomColor;->getGnumericPart(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 220
    iget-byte v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFPalette$CustomColor;->_green:B

    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFPalette$CustomColor;->getGnumericPart(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 222
    iget-byte v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFPalette$CustomColor;->_blue:B

    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFPalette$CustomColor;->getGnumericPart(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getIndex()S
    .locals 1

    .prologue
    .line 200
    iget-short v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPalette$CustomColor;->_byteOffset:S

    return v0
.end method

.method public getTriplet()[S
    .locals 3

    .prologue
    .line 206
    const/4 v0, 0x3

    new-array v0, v0, [S

    const/4 v1, 0x0

    iget-byte v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFPalette$CustomColor;->_red:B

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    aput-short v2, v0, v1

    const/4 v1, 0x1

    iget-byte v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFPalette$CustomColor;->_green:B

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    aput-short v2, v0, v1

    const/4 v1, 0x2

    iget-byte v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFPalette$CustomColor;->_blue:B

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    aput-short v2, v0, v1

    return-object v0
.end method
