.class public final Lorg/apache/poi/hssf/record/FontRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "FontRecord.java"


# static fields
.field public static final SS_NONE:S = 0x0s

.field public static final SS_SUB:S = 0x2s

.field public static final SS_SUPER:S = 0x1s

.field public static final U_DOUBLE:B = 0x2t

.field public static final U_DOUBLE_ACCOUNTING:B = 0x22t

.field public static final U_NONE:B = 0x0t

.field public static final U_SINGLE:B = 0x1t

.field public static final U_SINGLE_ACCOUNTING:B = 0x21t

.field private static final italic:Lorg/apache/poi/util/BitField;

.field private static final macoutline:Lorg/apache/poi/util/BitField;

.field private static final macshadow:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x31s

.field private static final strikeout:Lorg/apache/poi/util/BitField;


# instance fields
.field private field_11_font_name:Ljava/lang/String;

.field private field_1_font_height:S

.field private field_2_attributes:S

.field private field_3_color_palette_index:S

.field private field_4_bold_weight:S

.field private field_5_super_sub_script:S

.field private field_6_underline:B

.field private field_7_family:B

.field private field_8_charset:B

.field private field_9_zero:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/FontRecord;->italic:Lorg/apache/poi/util/BitField;

    .line 50
    const/16 v0, 0x8

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/FontRecord;->strikeout:Lorg/apache/poi/util/BitField;

    .line 51
    const/16 v0, 0x10

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/FontRecord;->macoutline:Lorg/apache/poi/util/BitField;

    .line 52
    const/16 v0, 0x20

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/FontRecord;->macshadow:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_9_zero:B

    .line 67
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 3
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .prologue
    .line 69
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 62
    const/4 v2, 0x0

    iput-byte v2, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_9_zero:B

    .line 70
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v2

    iput-short v2, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_1_font_height:S

    .line 71
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v2

    iput-short v2, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_2_attributes:S

    .line 72
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v2

    iput-short v2, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_3_color_palette_index:S

    .line 73
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v2

    iput-short v2, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_4_bold_weight:S

    .line 74
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v2

    iput-short v2, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_5_super_sub_script:S

    .line 75
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v2

    iput-byte v2, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_6_underline:B

    .line 76
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v2

    iput-byte v2, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_7_family:B

    .line 77
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v2

    iput-byte v2, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_8_charset:B

    .line 78
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v2

    iput-byte v2, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_9_zero:B

    .line 79
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v0

    .line 80
    .local v0, "field_10_font_name_len":I
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v1

    .line 82
    .local v1, "unicodeFlags":I
    if-lez v0, :cond_1

    .line 83
    if-nez v1, :cond_0

    .line 84
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readCompressedUnicode(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_11_font_name:Ljava/lang/String;

    .line 91
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUnicodeLEString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_11_font_name:Ljava/lang/String;

    goto :goto_0

    .line 89
    :cond_1
    const-string v2, ""

    iput-object v2, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_11_font_name:Ljava/lang/String;

    goto :goto_0
.end method

.method private static stringEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;

    .prologue
    .line 487
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cloneStyleFrom(Lorg/apache/poi/hssf/record/FontRecord;)V
    .locals 1
    .param p1, "source"    # Lorg/apache/poi/hssf/record/FontRecord;

    .prologue
    .line 427
    iget-short v0, p1, Lorg/apache/poi/hssf/record/FontRecord;->field_1_font_height:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_1_font_height:S

    .line 428
    iget-short v0, p1, Lorg/apache/poi/hssf/record/FontRecord;->field_2_attributes:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_2_attributes:S

    .line 429
    iget-short v0, p1, Lorg/apache/poi/hssf/record/FontRecord;->field_3_color_palette_index:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_3_color_palette_index:S

    .line 430
    iget-short v0, p1, Lorg/apache/poi/hssf/record/FontRecord;->field_4_bold_weight:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_4_bold_weight:S

    .line 431
    iget-short v0, p1, Lorg/apache/poi/hssf/record/FontRecord;->field_5_super_sub_script:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_5_super_sub_script:S

    .line 432
    iget-byte v0, p1, Lorg/apache/poi/hssf/record/FontRecord;->field_6_underline:B

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_6_underline:B

    .line 433
    iget-byte v0, p1, Lorg/apache/poi/hssf/record/FontRecord;->field_7_family:B

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_7_family:B

    .line 434
    iget-byte v0, p1, Lorg/apache/poi/hssf/record/FontRecord;->field_8_charset:B

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_8_charset:B

    .line 435
    iget-byte v0, p1, Lorg/apache/poi/hssf/record/FontRecord;->field_9_zero:B

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_9_zero:B

    .line 436
    iget-object v0, p1, Lorg/apache/poi/hssf/record/FontRecord;->field_11_font_name:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_11_font_name:Ljava/lang/String;

    .line 437
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 483
    instance-of v0, p1, Lorg/apache/poi/hssf/record/FontRecord;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/poi/hssf/record/FontRecord;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/FontRecord;->sameProperties(Lorg/apache/poi/hssf/record/FontRecord;)Z

    move-result v0

    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAttributes()S
    .locals 1

    .prologue
    .line 244
    iget-short v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_2_attributes:S

    return v0
.end method

.method public getBoldWeight()S
    .locals 1

    .prologue
    .line 305
    iget-short v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_4_bold_weight:S

    return v0
.end method

.method public getCharset()B
    .locals 1

    .prologue
    .line 350
    iget-byte v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_8_charset:B

    return v0
.end method

.method public getColorPaletteIndex()S
    .locals 1

    .prologue
    .line 295
    iget-short v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_3_color_palette_index:S

    return v0
.end method

.method protected getDataSize()I
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 407
    const/16 v2, 0x10

    .line 408
    .local v2, "size":I
    iget-object v4, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_11_font_name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    .line 409
    .local v0, "fontNameLen":I
    if-ge v0, v3, :cond_0

    .line 414
    .end local v2    # "size":I
    :goto_0
    return v2

    .line 413
    .restart local v2    # "size":I
    :cond_0
    iget-object v4, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_11_font_name:Ljava/lang/String;

    invoke-static {v4}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result v1

    .line 414
    .local v1, "hasMultibyte":Z
    if-eqz v1, :cond_1

    const/4 v3, 0x2

    :cond_1
    mul-int/2addr v3, v0

    add-int/2addr v2, v3

    goto :goto_0
.end method

.method public getFamily()B
    .locals 1

    .prologue
    .line 341
    iget-byte v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_7_family:B

    return v0
.end method

.method public getFontHeight()S
    .locals 1

    .prologue
    .line 235
    iget-short v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_1_font_height:S

    return v0
.end method

.method public getFontName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_11_font_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()S
    .locals 1

    .prologue
    .line 418
    const/16 v0, 0x31

    return v0
.end method

.method public getSuperSubScript()S
    .locals 1

    .prologue
    .line 317
    iget-short v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_5_super_sub_script:S

    return v0
.end method

.method public getUnderline()B
    .locals 1

    .prologue
    .line 332
    iget-byte v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_6_underline:B

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 440
    const/16 v0, 0x1f

    .line 441
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 442
    .local v1, "result":I
    iget-object v2, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_11_font_name:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 446
    mul-int/lit8 v2, v1, 0x1f

    iget-short v3, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_1_font_height:S

    add-int v1, v2, v3

    .line 447
    mul-int/lit8 v2, v1, 0x1f

    iget-short v3, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_2_attributes:S

    add-int v1, v2, v3

    .line 448
    mul-int/lit8 v2, v1, 0x1f

    iget-short v3, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_3_color_palette_index:S

    add-int v1, v2, v3

    .line 449
    mul-int/lit8 v2, v1, 0x1f

    iget-short v3, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_4_bold_weight:S

    add-int v1, v2, v3

    .line 450
    mul-int/lit8 v2, v1, 0x1f

    iget-short v3, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_5_super_sub_script:S

    add-int v1, v2, v3

    .line 451
    mul-int/lit8 v2, v1, 0x1f

    iget-byte v3, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_6_underline:B

    add-int v1, v2, v3

    .line 452
    mul-int/lit8 v2, v1, 0x1f

    iget-byte v3, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_7_family:B

    add-int v1, v2, v3

    .line 453
    mul-int/lit8 v2, v1, 0x1f

    iget-byte v3, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_8_charset:B

    add-int v1, v2, v3

    .line 454
    mul-int/lit8 v2, v1, 0x1f

    iget-byte v3, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_9_zero:B

    add-int v1, v2, v3

    .line 455
    return v1

    .line 442
    :cond_0
    iget-object v2, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_11_font_name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public isItalic()Z
    .locals 2

    .prologue
    .line 254
    sget-object v0, Lorg/apache/poi/hssf/record/FontRecord;->italic:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_2_attributes:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isMacoutlined()Z
    .locals 2

    .prologue
    .line 275
    sget-object v0, Lorg/apache/poi/hssf/record/FontRecord;->macoutline:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_2_attributes:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isMacshadowed()Z
    .locals 2

    .prologue
    .line 286
    sget-object v0, Lorg/apache/poi/hssf/record/FontRecord;->macshadow:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_2_attributes:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isStruckout()Z
    .locals 2

    .prologue
    .line 264
    sget-object v0, Lorg/apache/poi/hssf/record/FontRecord;->strikeout:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_2_attributes:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public sameProperties(Lorg/apache/poi/hssf/record/FontRecord;)Z
    .locals 2
    .param p1, "other"    # Lorg/apache/poi/hssf/record/FontRecord;

    .prologue
    .line 468
    iget-short v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_1_font_height:S

    iget-short v1, p1, Lorg/apache/poi/hssf/record/FontRecord;->field_1_font_height:S

    if-ne v0, v1, :cond_0

    iget-short v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_2_attributes:S

    iget-short v1, p1, Lorg/apache/poi/hssf/record/FontRecord;->field_2_attributes:S

    if-ne v0, v1, :cond_0

    iget-short v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_3_color_palette_index:S

    iget-short v1, p1, Lorg/apache/poi/hssf/record/FontRecord;->field_3_color_palette_index:S

    if-ne v0, v1, :cond_0

    iget-short v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_4_bold_weight:S

    iget-short v1, p1, Lorg/apache/poi/hssf/record/FontRecord;->field_4_bold_weight:S

    if-ne v0, v1, :cond_0

    iget-short v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_5_super_sub_script:S

    iget-short v1, p1, Lorg/apache/poi/hssf/record/FontRecord;->field_5_super_sub_script:S

    if-ne v0, v1, :cond_0

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_6_underline:B

    iget-byte v1, p1, Lorg/apache/poi/hssf/record/FontRecord;->field_6_underline:B

    if-ne v0, v1, :cond_0

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_7_family:B

    iget-byte v1, p1, Lorg/apache/poi/hssf/record/FontRecord;->field_7_family:B

    if-ne v0, v1, :cond_0

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_8_charset:B

    iget-byte v1, p1, Lorg/apache/poi/hssf/record/FontRecord;->field_8_charset:B

    if-ne v0, v1, :cond_0

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_9_zero:B

    iget-byte v1, p1, Lorg/apache/poi/hssf/record/FontRecord;->field_9_zero:B

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_11_font_name:Ljava/lang/String;

    iget-object v1, p1, Lorg/apache/poi/hssf/record/FontRecord;->field_11_font_name:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/poi/hssf/record/FontRecord;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 3
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .prologue
    .line 385
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FontRecord;->getFontHeight()S

    move-result v2

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 386
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FontRecord;->getAttributes()S

    move-result v2

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 387
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FontRecord;->getColorPaletteIndex()S

    move-result v2

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 388
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FontRecord;->getBoldWeight()S

    move-result v2

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 389
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FontRecord;->getSuperSubScript()S

    move-result v2

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 390
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FontRecord;->getUnderline()B

    move-result v2

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 391
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FontRecord;->getFamily()B

    move-result v2

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 392
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FontRecord;->getCharset()B

    move-result v2

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 393
    iget-byte v2, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_9_zero:B

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 394
    iget-object v2, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_11_font_name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 395
    .local v0, "fontNameLen":I
    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 396
    iget-object v2, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_11_font_name:Ljava/lang/String;

    invoke-static {v2}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result v1

    .line 397
    .local v1, "hasMultibyte":Z
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 398
    if-lez v0, :cond_0

    .line 399
    if-eqz v1, :cond_2

    .line 400
    iget-object v2, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_11_font_name:Ljava/lang/String;

    invoke-static {v2, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 405
    :cond_0
    :goto_1
    return-void

    .line 397
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 402
    :cond_2
    iget-object v2, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_11_font_name:Ljava/lang/String;

    invoke-static {v2, p1}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    goto :goto_1
.end method

.method public setAttributes(S)V
    .locals 0
    .param p1, "attributes"    # S

    .prologue
    .line 108
    iput-short p1, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_2_attributes:S

    .line 109
    return-void
.end method

.method public setBoldWeight(S)V
    .locals 0
    .param p1, "bw"    # S

    .prologue
    .line 171
    iput-short p1, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_4_bold_weight:S

    .line 172
    return-void
.end method

.method public setCharset(B)V
    .locals 0
    .param p1, "charset"    # B

    .prologue
    .line 216
    iput-byte p1, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_8_charset:B

    .line 217
    return-void
.end method

.method public setColorPaletteIndex(S)V
    .locals 0
    .param p1, "cpi"    # S

    .prologue
    .line 161
    iput-short p1, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_3_color_palette_index:S

    .line 162
    return-void
.end method

.method public setFamily(B)V
    .locals 0
    .param p1, "f"    # B

    .prologue
    .line 207
    iput-byte p1, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_7_family:B

    .line 208
    return-void
.end method

.method public setFontHeight(S)V
    .locals 0
    .param p1, "height"    # S

    .prologue
    .line 99
    iput-short p1, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_1_font_height:S

    .line 100
    return-void
.end method

.method public setFontName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fn"    # Ljava/lang/String;

    .prologue
    .line 226
    iput-object p1, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_11_font_name:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public setItalic(Z)V
    .locals 2
    .param p1, "italics"    # Z

    .prologue
    .line 120
    sget-object v0, Lorg/apache/poi/hssf/record/FontRecord;->italic:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_2_attributes:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_2_attributes:S

    .line 121
    return-void
.end method

.method public setMacoutline(Z)V
    .locals 2
    .param p1, "mac"    # Z

    .prologue
    .line 141
    sget-object v0, Lorg/apache/poi/hssf/record/FontRecord;->macoutline:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_2_attributes:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_2_attributes:S

    .line 142
    return-void
.end method

.method public setMacshadow(Z)V
    .locals 2
    .param p1, "mac"    # Z

    .prologue
    .line 152
    sget-object v0, Lorg/apache/poi/hssf/record/FontRecord;->macshadow:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_2_attributes:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_2_attributes:S

    .line 153
    return-void
.end method

.method public setStrikeout(Z)V
    .locals 2
    .param p1, "strike"    # Z

    .prologue
    .line 130
    sget-object v0, Lorg/apache/poi/hssf/record/FontRecord;->strikeout:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_2_attributes:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_2_attributes:S

    .line 131
    return-void
.end method

.method public setSuperSubScript(S)V
    .locals 0
    .param p1, "sss"    # S

    .prologue
    .line 183
    iput-short p1, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_5_super_sub_script:S

    .line 184
    return-void
.end method

.method public setUnderline(B)V
    .locals 0
    .param p1, "u"    # B

    .prologue
    .line 198
    iput-byte p1, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_6_underline:B

    .line 199
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 363
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 365
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "[FONT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 366
    const-string v1, "    .fontheight    = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FontRecord;->getFontHeight()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 367
    const-string v1, "    .attributes    = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FontRecord;->getAttributes()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 368
    const-string v1, "       .italic     = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FontRecord;->isItalic()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 369
    const-string v1, "       .strikout   = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FontRecord;->isStruckout()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 370
    const-string v1, "       .macoutlined= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FontRecord;->isMacoutlined()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 371
    const-string v1, "       .macshadowed= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FontRecord;->isMacshadowed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 372
    const-string v1, "    .colorpalette  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FontRecord;->getColorPaletteIndex()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 373
    const-string v1, "    .boldweight    = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FontRecord;->getBoldWeight()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 374
    const-string v1, "    .supersubscript= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FontRecord;->getSuperSubScript()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 375
    const-string v1, "    .underline     = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FontRecord;->getUnderline()B

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->byteToHex(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 376
    const-string v1, "    .family        = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FontRecord;->getFamily()B

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->byteToHex(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 377
    const-string v1, "    .charset       = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FontRecord;->getCharset()B

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->byteToHex(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 378
    const-string v1, "    .fontname      = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FontRecord;->getFontName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 379
    const-string v1, "[/FONT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 380
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
