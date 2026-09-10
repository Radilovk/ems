.class public Lorg/apache/poi/hssf/record/common/UnicodeString;
.super Ljava/lang/Object;
.source "UnicodeString.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/common/UnicodeString$1;,
        Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;,
        Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;,
        Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/poi/hssf/record/common/UnicodeString;",
        ">;"
    }
.end annotation


# static fields
.field private static _logger:Lorg/apache/poi/util/POILogger;

.field private static final extBit:Lorg/apache/poi/util/BitField;

.field private static final highByte:Lorg/apache/poi/util/BitField;

.field private static final richText:Lorg/apache/poi/util/BitField;


# instance fields
.field private field_1_charCount:S

.field private field_2_optionflags:B

.field private field_3_string:Ljava/lang/String;

.field private field_4_format_runs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;",
            ">;"
        }
    .end annotation
.end field

.field private field_5_ext_rst:Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/common/UnicodeString;->_logger:Lorg/apache/poi/util/POILogger;

    .line 53
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/common/UnicodeString;->highByte:Lorg/apache/poi/util/BitField;

    .line 55
    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/common/UnicodeString;->extBit:Lorg/apache/poi/util/BitField;

    .line 56
    const/16 v0, 0x8

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/common/UnicodeString;->richText:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/common/UnicodeString;->setString(Ljava/lang/String;)V

    .line 356
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 8
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .prologue
    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v4

    iput-short v4, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_1_charCount:S

    .line 435
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v4

    iput-byte v4, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_2_optionflags:B

    .line 437
    const/4 v3, 0x0

    .line 438
    .local v3, "runCount":I
    const/4 v0, 0x0

    .line 440
    .local v0, "extensionLength":I
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString;->isRichText()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 442
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v3

    .line 445
    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString;->isExtendedText()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 447
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    .line 450
    :cond_1
    iget-byte v4, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_2_optionflags:B

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_2

    const/4 v2, 0x1

    .line 451
    .local v2, "isCompressed":Z
    :goto_0
    if-eqz v2, :cond_3

    .line 452
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString;->getCharCount()I

    move-result v4

    invoke-virtual {p1, v4}, Lorg/apache/poi/hssf/record/RecordInputStream;->readCompressedUnicode(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_3_string:Ljava/lang/String;

    .line 458
    :goto_1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString;->isRichText()Z

    move-result v4

    if-eqz v4, :cond_4

    if-lez v3, :cond_4

    .line 459
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    .line 460
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v3, :cond_4

    .line 461
    iget-object v4, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    new-instance v5, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;

    invoke-direct {v5, p1}, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 450
    .end local v1    # "i":I
    .end local v2    # "isCompressed":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 454
    .restart local v2    # "isCompressed":Z
    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString;->getCharCount()I

    move-result v4

    invoke-virtual {p1, v4}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUnicodeLEString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_3_string:Ljava/lang/String;

    goto :goto_1

    .line 465
    :cond_4
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString;->isExtendedText()Z

    move-result v4

    if-eqz v4, :cond_5

    if-lez v0, :cond_5

    .line 466
    new-instance v4, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    new-instance v5, Lorg/apache/poi/hssf/record/cont/ContinuableRecordInput;

    invoke-direct {v5, p1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordInput;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    invoke-direct {v4, v5, v0}, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;-><init>(Lorg/apache/poi/util/LittleEndianInput;I)V

    iput-object v4, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_5_ext_rst:Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    .line 467
    iget-object v4, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_5_ext_rst:Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->getDataSize()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    if-eq v4, v0, :cond_5

    .line 468
    sget-object v4, Lorg/apache/poi/hssf/record/common/UnicodeString;->_logger:Lorg/apache/poi/util/POILogger;

    const/4 v5, 0x5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ExtRst was supposed to be "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes long, but seems to actually be "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_5_ext_rst:Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    invoke-virtual {v7}, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->getDataSize()I

    move-result v7

    add-int/lit8 v7, v7, 0x4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 471
    :cond_5
    return-void
.end method

.method static synthetic access$000()Lorg/apache/poi/util/POILogger;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lorg/apache/poi/hssf/record/common/UnicodeString;->_logger:Lorg/apache/poi/util/POILogger;

    return-object v0
.end method

.method private findFormatRunAt(I)I
    .locals 5
    .param p1, "characterPos"    # I

    .prologue
    const/4 v3, -0x1

    .line 588
    iget-object v4, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 589
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 590
    iget-object v4, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;

    .line 591
    .local v1, "r":Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;
    iget-short v4, v1, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;->_character:S

    if-ne v4, p1, :cond_0

    .line 596
    .end local v0    # "i":I
    .end local v1    # "r":Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;
    :goto_1
    return v0

    .line 593
    .restart local v0    # "i":I
    .restart local v1    # "r":Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;
    :cond_0
    iget-short v4, v1, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;->_character:S

    if-le v4, p1, :cond_1

    move v0, v3

    .line 594
    goto :goto_1

    .line 589
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "r":Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;
    :cond_2
    move v0, v3

    .line 596
    goto :goto_1
.end method

.method private isExtendedText()Z
    .locals 2

    .prologue
    .line 806
    sget-object v0, Lorg/apache/poi/hssf/record/common/UnicodeString;->extBit:Lorg/apache/poi/util/BitField;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString;->getOptionFlags()B

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method private isRichText()Z
    .locals 2

    .prologue
    .line 801
    sget-object v0, Lorg/apache/poi/hssf/record/common/UnicodeString;->richText:Lorg/apache/poi/util/BitField;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString;->getOptionFlags()B

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addFormatRun(Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;)V
    .locals 3
    .param p1, "r"    # Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;

    .prologue
    .line 605
    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    if-nez v1, :cond_0

    .line 606
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    .line 609
    :cond_0
    iget-short v1, p1, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;->_character:S

    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/common/UnicodeString;->findFormatRunAt(I)I

    move-result v0

    .line 610
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 611
    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 613
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 619
    sget-object v1, Lorg/apache/poi/hssf/record/common/UnicodeString;->richText:Lorg/apache/poi/util/BitField;

    iget-byte v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_2_optionflags:B

    invoke-virtual {v1, v2}, Lorg/apache/poi/util/BitField;->setByte(B)B

    move-result v1

    iput-byte v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_2_optionflags:B

    .line 620
    return-void
.end method

.method public clearFormatting()V
    .locals 2

    .prologue
    .line 638
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    .line 639
    sget-object v0, Lorg/apache/poi/hssf/record/common/UnicodeString;->richText:Lorg/apache/poi/util/BitField;

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_2_optionflags:B

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->clearByte(B)B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_2_optionflags:B

    .line 640
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 810
    new-instance v2, Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-direct {v2}, Lorg/apache/poi/hssf/record/common/UnicodeString;-><init>()V

    .line 811
    .local v2, "str":Lorg/apache/poi/hssf/record/common/UnicodeString;
    iget-short v3, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_1_charCount:S

    iput-short v3, v2, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_1_charCount:S

    .line 812
    iget-byte v3, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_2_optionflags:B

    iput-byte v3, v2, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_2_optionflags:B

    .line 813
    iget-object v3, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_3_string:Ljava/lang/String;

    iput-object v3, v2, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_3_string:Ljava/lang/String;

    .line 814
    iget-object v3, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 815
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    .line 816
    iget-object v3, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;

    .line 817
    .local v1, "r":Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;
    iget-object v3, v2, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    new-instance v4, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;

    iget-short v5, v1, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;->_character:S

    iget-short v6, v1, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;->_fontIndex:S

    invoke-direct {v4, v5, v6}, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;-><init>(SS)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 820
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "r":Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;
    :cond_0
    iget-object v3, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_5_ext_rst:Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    if-eqz v3, :cond_1

    .line 821
    iget-object v3, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_5_ext_rst:Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->clone()Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_5_ext_rst:Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    .line 824
    :cond_1
    return-object v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 45
    check-cast p1, Lorg/apache/poi/hssf/record/common/UnicodeString;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/common/UnicodeString;->compareTo(Lorg/apache/poi/hssf/record/common/UnicodeString;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/poi/hssf/record/common/UnicodeString;)I
    .locals 11
    .param p1, "str"    # Lorg/apache/poi/hssf/record/common/UnicodeString;

    .prologue
    const/4 v7, 0x1

    const/4 v8, -0x1

    const/4 v6, 0x0

    .line 750
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString;->getString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/common/UnicodeString;->getString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    .line 753
    .local v1, "result":I
    if-eqz v1, :cond_0

    move v2, v1

    .end local v1    # "result":I
    .local v2, "result":I
    move v6, v1

    .line 796
    :goto_0
    return v6

    .line 757
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_0
    iget-object v9, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    if-nez v9, :cond_1

    iget-object v9, p1, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    if-nez v9, :cond_1

    move v2, v1

    .line 759
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_0

    .line 761
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_1
    iget-object v9, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    if-nez v9, :cond_2

    iget-object v9, p1, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    if-eqz v9, :cond_2

    move v2, v1

    .end local v1    # "result":I
    .restart local v2    # "result":I
    move v6, v7

    .line 763
    goto :goto_0

    .line 764
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_2
    iget-object v9, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    if-eqz v9, :cond_3

    iget-object v9, p1, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    if-nez v9, :cond_3

    move v2, v1

    .end local v1    # "result":I
    .restart local v2    # "result":I
    move v6, v8

    .line 766
    goto :goto_0

    .line 769
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_3
    iget-object v9, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    .line 770
    .local v5, "size":I
    iget-object v9, p1, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-eq v5, v9, :cond_4

    .line 771
    iget-object v6, p1, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int v6, v5, v6

    move v2, v1

    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_0

    .line 773
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v5, :cond_6

    .line 774
    iget-object v9, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;

    .line 775
    .local v3, "run1":Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;
    iget-object v9, p1, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;

    .line 777
    .local v4, "run2":Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;
    invoke-virtual {v3, v4}, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;->compareTo(Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;)I

    move-result v1

    .line 778
    if-eqz v1, :cond_5

    move v2, v1

    .end local v1    # "result":I
    .restart local v2    # "result":I
    move v6, v1

    .line 779
    goto :goto_0

    .line 773
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 783
    .end local v3    # "run1":Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;
    .end local v4    # "run2":Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;
    :cond_6
    iget-object v9, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_5_ext_rst:Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    if-nez v9, :cond_7

    iget-object v9, p1, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_5_ext_rst:Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    if-nez v9, :cond_7

    move v2, v1

    .line 784
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_0

    .line 785
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_7
    iget-object v9, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_5_ext_rst:Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    if-nez v9, :cond_8

    iget-object v9, p1, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_5_ext_rst:Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    if-eqz v9, :cond_8

    move v2, v1

    .end local v1    # "result":I
    .restart local v2    # "result":I
    move v6, v7

    .line 786
    goto :goto_0

    .line 787
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_8
    iget-object v7, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_5_ext_rst:Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    if-eqz v7, :cond_9

    iget-object v7, p1, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_5_ext_rst:Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    if-nez v7, :cond_9

    move v2, v1

    .end local v1    # "result":I
    .restart local v2    # "result":I
    move v6, v8

    .line 788
    goto :goto_0

    .line 790
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_9
    iget-object v7, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_5_ext_rst:Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    iget-object v8, p1, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_5_ext_rst:Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    invoke-virtual {v7, v8}, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->compareTo(Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;)I

    move-result v1

    .line 791
    if-eqz v1, :cond_a

    move v2, v1

    .end local v1    # "result":I
    .restart local v2    # "result":I
    move v6, v1

    .line 792
    goto/16 :goto_0

    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_a
    move v2, v1

    .line 796
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 11
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 377
    instance-of v9, p1, Lorg/apache/poi/hssf/record/common/UnicodeString;

    if-nez v9, :cond_1

    .line 426
    :cond_0
    :goto_0
    return v7

    :cond_1
    move-object v3, p1

    .line 380
    check-cast v3, Lorg/apache/poi/hssf/record/common/UnicodeString;

    .line 383
    .local v3, "other":Lorg/apache/poi/hssf/record/common/UnicodeString;
    iget-short v9, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_1_charCount:S

    iget-short v10, v3, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_1_charCount:S

    if-ne v9, v10, :cond_2

    iget-byte v9, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_2_optionflags:B

    iget-byte v10, v3, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_2_optionflags:B

    if-ne v9, v10, :cond_2

    iget-object v9, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_3_string:Ljava/lang/String;

    iget-object v10, v3, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_3_string:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move v0, v8

    .line 386
    .local v0, "eq":Z
    :goto_1
    if-eqz v0, :cond_0

    .line 389
    iget-object v9, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    if-nez v9, :cond_3

    iget-object v9, v3, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    if-nez v9, :cond_3

    move v7, v8

    .line 391
    goto :goto_0

    .end local v0    # "eq":Z
    :cond_2
    move v0, v7

    .line 383
    goto :goto_1

    .line 392
    .restart local v0    # "eq":Z
    :cond_3
    iget-object v9, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    if-nez v9, :cond_4

    iget-object v9, v3, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    if-nez v9, :cond_0

    :cond_4
    iget-object v9, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    if-eqz v9, :cond_5

    iget-object v9, v3, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    if-eqz v9, :cond_0

    .line 398
    :cond_5
    iget-object v9, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v6

    .line 399
    .local v6, "size":I
    iget-object v9, v3, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ne v6, v9, :cond_0

    .line 402
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v6, :cond_6

    .line 403
    iget-object v9, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;

    .line 404
    .local v4, "run1":Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;
    iget-object v9, v3, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;

    .line 406
    .local v5, "run2":Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;
    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 402
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 411
    .end local v4    # "run1":Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;
    .end local v5    # "run2":Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;
    :cond_6
    iget-object v9, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_5_ext_rst:Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    if-nez v9, :cond_7

    iget-object v9, v3, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_5_ext_rst:Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    if-nez v9, :cond_7

    :goto_3
    move v7, v8

    .line 426
    goto :goto_0

    .line 413
    :cond_7
    iget-object v9, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_5_ext_rst:Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    if-eqz v9, :cond_0

    iget-object v9, v3, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_5_ext_rst:Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    if-eqz v9, :cond_0

    .line 414
    iget-object v9, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_5_ext_rst:Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    iget-object v10, v3, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_5_ext_rst:Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    invoke-virtual {v9, v10}, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->compareTo(Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;)I

    move-result v1

    .line 415
    .local v1, "extCmp":I
    if-nez v1, :cond_0

    goto :goto_3
.end method

.method public formatIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;",
            ">;"
        }
    .end annotation

    .prologue
    .line 623
    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 626
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCharCount()I
    .locals 2

    .prologue
    .line 482
    iget-short v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_1_charCount:S

    if-gez v0, :cond_0

    .line 483
    iget-short v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_1_charCount:S

    const/high16 v1, 0x10000

    add-int/2addr v0, v1

    .line 485
    :goto_0
    return v0

    :cond_0
    iget-short v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_1_charCount:S

    goto :goto_0
.end method

.method public getCharCountShort()S
    .locals 1

    .prologue
    .line 495
    iget-short v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_1_charCount:S

    return v0
.end method

.method public getDebugInfo()Ljava/lang/String;
    .locals 5

    .prologue
    .line 690
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 692
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v3, "[UNICODESTRING]\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 693
    const-string v3, "    .charcount       = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString;->getCharCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 695
    const-string v3, "    .optionflags     = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString;->getOptionFlags()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 697
    const-string v3, "    .string          = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 698
    iget-object v3, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 699
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 700
    iget-object v3, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;

    .line 701
    .local v2, "r":Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "      .format_run"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "          = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 699
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 704
    .end local v1    # "i":I
    .end local v2    # "r":Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;
    :cond_0
    iget-object v3, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_5_ext_rst:Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    if-eqz v3, :cond_1

    .line 705
    const-string v3, "    .field_5_ext_rst          = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 706
    iget-object v3, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_5_ext_rst:Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 708
    :cond_1
    const-string v3, "[/UNICODESTRING]\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 709
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getExtendedRst()Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_5_ext_rst:Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    return-object v0
.end method

.method public getFormatRun(I)Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 578
    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    if-nez v1, :cond_1

    .line 584
    :cond_0
    :goto_0
    return-object v0

    .line 581
    :cond_1
    if-ltz p1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 584
    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;

    goto :goto_0
.end method

.method public getFormatRunCount()I
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 573
    const/4 v0, 0x0

    .line 574
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getOptionFlags()B
    .locals 1

    .prologue
    .line 518
    iget-byte v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_2_optionflags:B

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_3_string:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 362
    const/4 v0, 0x0

    .line 363
    .local v0, "stringHash":I
    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_3_string:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 364
    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_3_string:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 365
    :cond_0
    iget-short v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_1_charCount:S

    add-int/2addr v1, v0

    return v1
.end method

.method public removeFormatRun(Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;)V
    .locals 2
    .param p1, "r"    # Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;

    .prologue
    .line 630
    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 631
    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 632
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    .line 633
    sget-object v0, Lorg/apache/poi/hssf/record/common/UnicodeString;->richText:Lorg/apache/poi/util/BitField;

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_2_optionflags:B

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->clearByte(B)B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_2_optionflags:B

    .line 635
    :cond_0
    return-void
.end method

.method public serialize(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V
    .locals 6
    .param p1, "out"    # Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;

    .prologue
    .line 718
    const/4 v2, 0x0

    .line 719
    .local v2, "numberOfRichTextRuns":I
    const/4 v0, 0x0

    .line 720
    .local v0, "extendedDataSize":I
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString;->isRichText()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 721
    iget-object v4, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 723
    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString;->isExtendedText()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_5_ext_rst:Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    if-eqz v4, :cond_1

    .line 724
    iget-object v4, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_5_ext_rst:Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->getDataSize()I

    move-result v4

    add-int/lit8 v0, v4, 0x4

    .line 729
    :cond_1
    iget-object v4, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_3_string:Ljava/lang/String;

    invoke-virtual {p1, v4, v2, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeString(Ljava/lang/String;II)V

    .line 731
    if-lez v2, :cond_3

    .line 734
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 735
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->getAvailableSpace()I

    move-result v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_2

    .line 736
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeContinue()V

    .line 738
    :cond_2
    iget-object v4, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;

    .line 739
    .local v3, "r":Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;
    invoke-virtual {v3, p1}, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 734
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 743
    .end local v1    # "i":I
    .end local v3    # "r":Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;
    :cond_3
    if-lez v0, :cond_4

    .line 744
    iget-object v4, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_5_ext_rst:Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    invoke-virtual {v4, p1}, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->serialize(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V

    .line 746
    :cond_4
    return-void
.end method

.method public setCharCount(S)V
    .locals 0
    .param p1, "cc"    # S

    .prologue
    .line 505
    iput-short p1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_1_charCount:S

    .line 506
    return-void
.end method

.method setExtendedRst(Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;)V
    .locals 2
    .param p1, "ext_rst"    # Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    .prologue
    .line 647
    if-eqz p1, :cond_0

    .line 648
    sget-object v0, Lorg/apache/poi/hssf/record/common/UnicodeString;->extBit:Lorg/apache/poi/util/BitField;

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_2_optionflags:B

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->setByte(B)B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_2_optionflags:B

    .line 652
    :goto_0
    iput-object p1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_5_ext_rst:Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    .line 653
    return-void

    .line 650
    :cond_0
    sget-object v0, Lorg/apache/poi/hssf/record/common/UnicodeString;->extBit:Lorg/apache/poi/util/BitField;

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_2_optionflags:B

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->clearByte(B)B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_2_optionflags:B

    goto :goto_0
.end method

.method public setOptionFlags(B)V
    .locals 0
    .param p1, "of"    # B

    .prologue
    .line 531
    iput-byte p1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_2_optionflags:B

    .line 532
    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .locals 5
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 549
    iput-object p1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_3_string:Ljava/lang/String;

    .line 550
    iget-object v3, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_3_string:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    int-to-short v3, v3

    invoke-virtual {p0, v3}, Lorg/apache/poi/hssf/record/common/UnicodeString;->setCharCount(S)V

    .line 554
    const/4 v2, 0x0

    .line 555
    .local v2, "useUTF16":Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 557
    .local v1, "strlen":I
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 559
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xff

    if-le v3, v4, :cond_1

    .line 561
    const/4 v2, 0x1

    .line 565
    :cond_0
    if-eqz v2, :cond_2

    .line 567
    sget-object v3, Lorg/apache/poi/hssf/record/common/UnicodeString;->highByte:Lorg/apache/poi/util/BitField;

    iget-byte v4, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_2_optionflags:B

    invoke-virtual {v3, v4}, Lorg/apache/poi/util/BitField;->setByte(B)B

    move-result v3

    iput-byte v3, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_2_optionflags:B

    .line 569
    :goto_1
    return-void

    .line 557
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 568
    :cond_2
    sget-object v3, Lorg/apache/poi/hssf/record/common/UnicodeString;->highByte:Lorg/apache/poi/util/BitField;

    iget-byte v4, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_2_optionflags:B

    invoke-virtual {v3, v4}, Lorg/apache/poi/util/BitField;->clearByte(B)B

    move-result v3

    iput-byte v3, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_2_optionflags:B

    goto :goto_1
.end method

.method public swapFontUse(SS)V
    .locals 3
    .param p1, "oldFontIndex"    # S
    .param p2, "newFontIndex"    # S

    .prologue
    .line 663
    iget-object v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;

    .line 664
    .local v1, "run":Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;
    iget-short v2, v1, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;->_fontIndex:S

    if-ne v2, p1, :cond_0

    .line 665
    iput-short p2, v1, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;->_fontIndex:S

    goto :goto_0

    .line 668
    .end local v1    # "run":Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 678
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
