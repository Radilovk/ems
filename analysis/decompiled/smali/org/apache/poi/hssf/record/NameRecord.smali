.class public final Lorg/apache/poi/hssf/record/NameRecord;
.super Lorg/apache/poi/hssf/record/cont/ContinuableRecord;
.source "NameRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/NameRecord$Option;
    }
.end annotation


# static fields
.field public static final BUILTIN_AUTO_ACTIVATE:B = 0xat

.field public static final BUILTIN_AUTO_CLOSE:B = 0x3t

.field public static final BUILTIN_AUTO_DEACTIVATE:B = 0xbt

.field public static final BUILTIN_AUTO_OPEN:B = 0x2t

.field public static final BUILTIN_CONSOLIDATE_AREA:B = 0x1t

.field public static final BUILTIN_CRITERIA:B = 0x5t

.field public static final BUILTIN_DATABASE:B = 0x4t

.field public static final BUILTIN_DATA_FORM:B = 0x9t

.field public static final BUILTIN_FILTER_DB:B = 0xdt

.field public static final BUILTIN_PRINT_AREA:B = 0x6t

.field public static final BUILTIN_PRINT_TITLE:B = 0x7t

.field public static final BUILTIN_RECORDER:B = 0x8t

.field public static final BUILTIN_SHEET_TITLE:B = 0xct

.field public static final sid:S = 0x18s


# instance fields
.field private field_11_nameIsMultibyte:Z

.field private field_12_built_in_code:B

.field private field_12_name_text:Ljava/lang/String;

.field private field_13_name_definition:Lorg/apache/poi/ss/formula/Formula;

.field private field_14_custom_menu_text:Ljava/lang/String;

.field private field_15_description_text:Ljava/lang/String;

.field private field_16_help_topic_text:Ljava/lang/String;

.field private field_17_status_bar_text:Ljava/lang/String;

.field private field_1_option_flag:S

.field private field_2_keyboard_shortcut:B

.field private field_5_externSheetIndex_plus1:S

.field private field_6_sheetNumber:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecord;-><init>()V

    .line 97
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/Ptg;->EMPTY_PTG_ARRAY:[Lorg/apache/poi/ss/formula/ptg/Ptg;

    invoke-static {v0}, Lorg/apache/poi/ss/formula/Formula;->create([Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_13_name_definition:Lorg/apache/poi/ss/formula/Formula;

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_12_name_text:Ljava/lang/String;

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_14_custom_menu_text:Ljava/lang/String;

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_15_description_text:Ljava/lang/String;

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_16_help_topic_text:Ljava/lang/String;

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_17_status_bar_text:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public constructor <init>(BI)V
    .locals 1
    .param p1, "builtin"    # B
    .param p2, "sheetNumber"    # I

    .prologue
    .line 112
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/NameRecord;-><init>()V

    .line 113
    iput-byte p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_12_built_in_code:B

    .line 114
    iget-short v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    or-int/lit8 v0, v0, 0x20

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/NameRecord;->setOptionFlag(S)V

    .line 115
    iput p2, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_6_sheetNumber:I

    .line 116
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 11
    .param p1, "ris"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .prologue
    .line 435
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecord;-><init>()V

    .line 440
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readAllContinuedRemainder()[B

    move-result-object v8

    .line 441
    .local v8, "remainder":[B
    new-instance v6, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;

    invoke-direct {v6, v8}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;-><init>([B)V

    .line 443
    .local v6, "in":Lorg/apache/poi/util/LittleEndianInput;
    invoke-interface {v6}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v9

    iput-short v9, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    .line 444
    invoke-interface {v6}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v9

    iput-byte v9, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_2_keyboard_shortcut:B

    .line 445
    invoke-interface {v6}, Lorg/apache/poi/util/LittleEndianInput;->readUByte()I

    move-result v4

    .line 446
    .local v4, "field_3_length_name_text":I
    invoke-interface {v6}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v5

    .line 447
    .local v5, "field_4_length_name_definition":I
    invoke-interface {v6}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v9

    iput-short v9, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_5_externSheetIndex_plus1:S

    .line 448
    invoke-interface {v6}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v9

    iput v9, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_6_sheetNumber:I

    .line 449
    invoke-interface {v6}, Lorg/apache/poi/util/LittleEndianInput;->readUByte()I

    move-result v1

    .line 450
    .local v1, "f7_customMenuLen":I
    invoke-interface {v6}, Lorg/apache/poi/util/LittleEndianInput;->readUByte()I

    move-result v2

    .line 451
    .local v2, "f8_descriptionTextLen":I
    invoke-interface {v6}, Lorg/apache/poi/util/LittleEndianInput;->readUByte()I

    move-result v3

    .line 452
    .local v3, "f9_helpTopicTextLen":I
    invoke-interface {v6}, Lorg/apache/poi/util/LittleEndianInput;->readUByte()I

    move-result v0

    .line 455
    .local v0, "f10_statusBarTextLen":I
    invoke-interface {v6}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    :goto_0
    iput-boolean v9, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_11_nameIsMultibyte:Z

    .line 456
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NameRecord;->isBuiltInName()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 457
    invoke-interface {v6}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v9

    iput-byte v9, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_12_built_in_code:B

    .line 466
    :goto_1
    invoke-interface {v6}, Lorg/apache/poi/util/LittleEndianInput;->available()I

    move-result v9

    add-int v10, v1, v2

    add-int/2addr v10, v3

    add-int/2addr v10, v0

    sub-int v7, v9, v10

    .line 468
    .local v7, "nBytesAvailable":I
    invoke-static {v5, v6, v7}, Lorg/apache/poi/ss/formula/Formula;->read(ILorg/apache/poi/util/LittleEndianInput;I)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v9

    iput-object v9, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_13_name_definition:Lorg/apache/poi/ss/formula/Formula;

    .line 471
    invoke-static {v6, v1}, Lorg/apache/poi/util/StringUtil;->readCompressedUnicode(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_14_custom_menu_text:Ljava/lang/String;

    .line 472
    invoke-static {v6, v2}, Lorg/apache/poi/util/StringUtil;->readCompressedUnicode(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_15_description_text:Ljava/lang/String;

    .line 473
    invoke-static {v6, v3}, Lorg/apache/poi/util/StringUtil;->readCompressedUnicode(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_16_help_topic_text:Ljava/lang/String;

    .line 474
    invoke-static {v6, v0}, Lorg/apache/poi/util/StringUtil;->readCompressedUnicode(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_17_status_bar_text:Ljava/lang/String;

    .line 475
    return-void

    .line 455
    .end local v7    # "nBytesAvailable":I
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 459
    :cond_1
    iget-boolean v9, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_11_nameIsMultibyte:Z

    if-eqz v9, :cond_2

    .line 460
    invoke-static {v6, v4}, Lorg/apache/poi/util/StringUtil;->readUnicodeLE(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_12_name_text:Ljava/lang/String;

    goto :goto_1

    .line 462
    :cond_2
    invoke-static {v6, v4}, Lorg/apache/poi/util/StringUtil;->readCompressedUnicode(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_12_name_text:Ljava/lang/String;

    goto :goto_1
.end method

.method private getNameRawSize()I
    .locals 2

    .prologue
    .line 390
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NameRecord;->isBuiltInName()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 391
    const/4 v0, 0x1

    .line 397
    :cond_0
    :goto_0
    return v0

    .line 393
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_12_name_text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 394
    .local v0, "nChars":I
    iget-boolean v1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_11_nameIsMultibyte:Z

    if-eqz v1, :cond_0

    .line 395
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private getNameTextLength()I
    .locals 1

    .prologue
    .line 213
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NameRecord;->isBuiltInName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    const/4 v0, 0x1

    .line 216
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_12_name_text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method private static translateBuiltInName(B)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # B

    .prologue
    .line 570
    packed-switch p0, :pswitch_data_0

    .line 588
    const-string v0, "Unknown"

    :goto_0
    return-object v0

    .line 572
    :pswitch_0
    const-string v0, "Auto_Activate"

    goto :goto_0

    .line 573
    :pswitch_1
    const-string v0, "Auto_Close"

    goto :goto_0

    .line 574
    :pswitch_2
    const-string v0, "Auto_Deactivate"

    goto :goto_0

    .line 575
    :pswitch_3
    const-string v0, "Auto_Open"

    goto :goto_0

    .line 576
    :pswitch_4
    const-string v0, "Consolidate_Area"

    goto :goto_0

    .line 577
    :pswitch_5
    const-string v0, "Criteria"

    goto :goto_0

    .line 578
    :pswitch_6
    const-string v0, "Database"

    goto :goto_0

    .line 579
    :pswitch_7
    const-string v0, "Data_Form"

    goto :goto_0

    .line 580
    :pswitch_8
    const-string v0, "Print_Area"

    goto :goto_0

    .line 581
    :pswitch_9
    const-string v0, "Print_Titles"

    goto :goto_0

    .line 582
    :pswitch_a
    const-string v0, "Recorder"

    goto :goto_0

    .line 583
    :pswitch_b
    const-string v0, "Sheet_Title"

    goto :goto_0

    .line 584
    :pswitch_c
    const-string v0, "_FilterDatabase"

    goto :goto_0

    .line 570
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_7
        :pswitch_0
        :pswitch_2
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method


# virtual methods
.method public getBuiltInName()B
    .locals 1

    .prologue
    .line 301
    iget-byte v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_12_built_in_code:B

    return v0
.end method

.method public getCustomMenuText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_14_custom_menu_text:Ljava/lang/String;

    return-object v0
.end method

.method protected getDataSize()I
    .locals 2

    .prologue
    .line 401
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/NameRecord;->getNameRawSize()I

    move-result v0

    add-int/lit8 v0, v0, 0xd

    iget-object v1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_14_custom_menu_text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_15_description_text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_16_help_topic_text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_17_status_bar_text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_13_name_definition:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/Formula;->getEncodedSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getDescriptionText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_15_description_text:Ljava/lang/String;

    return-object v0
.end method

.method public getExternSheetNumber()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 414
    iget-object v2, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_13_name_definition:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/Formula;->getEncodedSize()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 426
    :cond_0
    :goto_0
    return v1

    .line 417
    :cond_1
    iget-object v2, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_13_name_definition:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    aget-object v0, v2, v1

    .line 419
    .local v0, "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    if-ne v2, v3, :cond_2

    .line 420
    check-cast v0, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    .end local v0    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->getExternSheetIndex()I

    move-result v1

    goto :goto_0

    .line 423
    .restart local v0    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    if-ne v2, v3, :cond_0

    .line 424
    check-cast v0, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    .end local v0    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->getExternSheetIndex()I

    move-result v1

    goto :goto_0
.end method

.method public getFnGroup()B
    .locals 2

    .prologue
    .line 147
    iget-short v1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    and-int/lit16 v0, v1, 0xfc0

    .line 148
    .local v0, "masked":I
    shr-int/lit8 v1, v0, 0x4

    int-to-byte v1, v1

    return v1
.end method

.method public getHelpTopicText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_16_help_topic_text:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyboardShortcut()B
    .locals 1

    .prologue
    .line 205
    iget-byte v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_2_keyboard_shortcut:B

    return v0
.end method

.method public getNameDefinition()[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_13_name_definition:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    return-object v0
.end method

.method public getNameText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NameRecord;->isBuiltInName()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NameRecord;->getBuiltInName()B

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/hssf/record/NameRecord;->translateBuiltInName(B)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_12_name_text:Ljava/lang/String;

    goto :goto_0
.end method

.method public getOptionFlag()S
    .locals 1

    .prologue
    .line 198
    iget-short v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    return v0
.end method

.method public getSheetNumber()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_6_sheetNumber:I

    return v0
.end method

.method public getSid()S
    .locals 1

    .prologue
    .line 481
    const/16 v0, 0x18

    return v0
.end method

.method public getStatusBarText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_17_status_bar_text:Ljava/lang/String;

    return-object v0
.end method

.method public hasFormula()Z
    .locals 1

    .prologue
    .line 258
    iget-short v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    invoke-static {v0}, Lorg/apache/poi/hssf/record/NameRecord$Option;->isFormula(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_13_name_definition:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/Formula;->getEncodedTokenSize()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBuiltInName()Z
    .locals 1

    .prologue
    .line 284
    iget-short v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCommandName()Z
    .locals 1

    .prologue
    .line 265
    iget-short v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isComplexFunction()Z
    .locals 1

    .prologue
    .line 277
    iget-short v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFunctionName()Z
    .locals 1

    .prologue
    .line 237
    iget-short v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHiddenName()Z
    .locals 1

    .prologue
    .line 224
    iget-short v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMacro()Z
    .locals 1

    .prologue
    .line 271
    iget-short v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public serialize(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V
    .locals 6
    .param p1, "out"    # Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;

    .prologue
    .line 351
    iget-object v5, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_14_custom_menu_text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    .line 352
    .local v1, "field_7_length_custom_menu":I
    iget-object v5, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_15_description_text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    .line 353
    .local v2, "field_8_length_description_text":I
    iget-object v5, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_16_help_topic_text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    .line 354
    .local v3, "field_9_length_help_topic_text":I
    iget-object v5, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_17_status_bar_text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    .line 357
    .local v0, "field_10_length_status_bar_text":I
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NameRecord;->getOptionFlag()S

    move-result v5

    invoke-virtual {p1, v5}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    .line 358
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NameRecord;->getKeyboardShortcut()B

    move-result v5

    invoke-virtual {p1, v5}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeByte(I)V

    .line 359
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/NameRecord;->getNameTextLength()I

    move-result v5

    invoke-virtual {p1, v5}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeByte(I)V

    .line 361
    iget-object v5, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_13_name_definition:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/Formula;->getEncodedTokenSize()I

    move-result v5

    invoke-virtual {p1, v5}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    .line 362
    iget-short v5, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_5_externSheetIndex_plus1:S

    invoke-virtual {p1, v5}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    .line 363
    iget v5, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_6_sheetNumber:I

    invoke-virtual {p1, v5}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    .line 364
    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeByte(I)V

    .line 365
    invoke-virtual {p1, v2}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeByte(I)V

    .line 366
    invoke-virtual {p1, v3}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeByte(I)V

    .line 367
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeByte(I)V

    .line 368
    iget-boolean v5, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_11_nameIsMultibyte:Z

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {p1, v5}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeByte(I)V

    .line 370
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NameRecord;->isBuiltInName()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 372
    iget-byte v5, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_12_built_in_code:B

    invoke-virtual {p1, v5}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeByte(I)V

    .line 381
    :goto_1
    iget-object v5, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_13_name_definition:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v5, p1}, Lorg/apache/poi/ss/formula/Formula;->serializeTokens(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 382
    iget-object v5, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_13_name_definition:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v5, p1}, Lorg/apache/poi/ss/formula/Formula;->serializeArrayConstantData(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 384
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NameRecord;->getCustomMenuText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 385
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NameRecord;->getDescriptionText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 386
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NameRecord;->getHelpTopicText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 387
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NameRecord;->getStatusBarText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 388
    return-void

    .line 368
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 374
    :cond_1
    iget-object v4, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_12_name_text:Ljava/lang/String;

    .line 375
    .local v4, "nameText":Ljava/lang/String;
    iget-boolean v5, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_11_nameIsMultibyte:Z

    if-eqz v5, :cond_2

    .line 376
    invoke-static {v4, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    goto :goto_1

    .line 378
    :cond_2
    invoke-static {v4, p1}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    goto :goto_1
.end method

.method public setCustomMenuText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 170
    iput-object p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_14_custom_menu_text:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setDescriptionText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 177
    iput-object p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_15_description_text:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setFunction(Z)V
    .locals 1
    .param p1, "function"    # Z

    .prologue
    .line 247
    if-eqz p1, :cond_0

    .line 248
    iget-short v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    or-int/lit8 v0, v0, 0x2

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    .line 252
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-short v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    and-int/lit8 v0, v0, -0x3

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    goto :goto_0
.end method

.method public setHelpTopicText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_16_help_topic_text:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setHidden(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 227
    if-eqz p1, :cond_0

    .line 228
    iget-short v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    or-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    .line 232
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-short v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    and-int/lit8 v0, v0, -0x2

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    goto :goto_0
.end method

.method public setKeyboardShortcut(B)V
    .locals 0
    .param p1, "shortcut"    # B

    .prologue
    .line 130
    iput-byte p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_2_keyboard_shortcut:B

    .line 131
    return-void
.end method

.method public setNameDefinition([Lorg/apache/poi/ss/formula/ptg/Ptg;)V
    .locals 1
    .param p1, "ptgs"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;

    .prologue
    .line 313
    invoke-static {p1}, Lorg/apache/poi/ss/formula/Formula;->create([Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_13_name_definition:Lorg/apache/poi/ss/formula/Formula;

    .line 314
    return-void
.end method

.method public setNameText(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_12_name_text:Ljava/lang/String;

    .line 163
    invoke-static {p1}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_11_nameIsMultibyte:Z

    .line 164
    return-void
.end method

.method public setOptionFlag(S)V
    .locals 0
    .param p1, "flag"    # S

    .prologue
    .line 122
    iput-short p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    .line 123
    return-void
.end method

.method public setSheetNumber(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 154
    iput p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_6_sheetNumber:I

    .line 155
    return-void
.end method

.method public setStatusBarText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 191
    iput-object p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_17_status_bar_text:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 535
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 537
    .local v3, "sb":Ljava/lang/StringBuffer;
    const-string v4, "[NAME]\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 538
    const-string v4, "    .option flags           = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-short v5, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 539
    const-string v4, "    .keyboard shortcut      = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-byte v5, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_2_keyboard_shortcut:B

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->byteToHex(I)[C

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 540
    const-string v4, "    .length of the name     = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/NameRecord;->getNameTextLength()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 541
    const-string v4, "    .extSheetIx(1-based, 0=Global)= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-short v5, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_5_externSheetIndex_plus1:S

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 542
    const-string v4, "    .sheetTabIx             = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget v5, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_6_sheetNumber:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 543
    const-string v4, "    .Menu text length       = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_14_custom_menu_text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 544
    const-string v4, "    .Description text length= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_15_description_text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 545
    const-string v4, "    .Help topic text length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_16_help_topic_text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 546
    const-string v4, "    .Status bar text length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_17_status_bar_text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 547
    const-string v4, "    .NameIsMultibyte        = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-boolean v5, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_11_nameIsMultibyte:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 548
    const-string v4, "    .Name (Unicode text)    = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NameRecord;->getNameText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 549
    iget-object v4, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_13_name_definition:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    .line 550
    .local v2, "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    const-string v4, "    .Formula (nTokens="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 551
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 552
    aget-object v1, v2, v0

    .line 553
    .local v1, "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "       "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ptg/Ptg;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getRVAType()C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 551
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 556
    .end local v1    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_0
    const-string v4, "    .Menu text       = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_14_custom_menu_text:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 557
    const-string v4, "    .Description text= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_15_description_text:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 558
    const-string v4, "    .Help topic text = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_16_help_topic_text:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 559
    const-string v4, "    .Status bar text = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_17_status_bar_text:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 560
    const-string v4, "[/NAME]\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 562
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
