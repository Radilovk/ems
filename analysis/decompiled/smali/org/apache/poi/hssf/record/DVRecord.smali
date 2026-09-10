.class public final Lorg/apache/poi/hssf/record/DVRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "DVRecord.java"


# static fields
.field private static final NULL_TEXT_STRING:Lorg/apache/poi/hssf/record/common/UnicodeString;

.field private static final opt_condition_operator:Lorg/apache/poi/util/BitField;

.field private static final opt_data_type:Lorg/apache/poi/util/BitField;

.field private static final opt_empty_cell_allowed:Lorg/apache/poi/util/BitField;

.field private static final opt_error_style:Lorg/apache/poi/util/BitField;

.field private static final opt_show_error_on_invalid_value:Lorg/apache/poi/util/BitField;

.field private static final opt_show_prompt_on_cell_selected:Lorg/apache/poi/util/BitField;

.field private static final opt_string_list_formula:Lorg/apache/poi/util/BitField;

.field private static final opt_suppress_dropdown_arrow:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x1bes


# instance fields
.field private _errorText:Lorg/apache/poi/hssf/record/common/UnicodeString;

.field private _errorTitle:Lorg/apache/poi/hssf/record/common/UnicodeString;

.field private _formula1:Lorg/apache/poi/ss/formula/Formula;

.field private _formula2:Lorg/apache/poi/ss/formula/Formula;

.field private _not_used_1:S

.field private _not_used_2:S

.field private _option_flags:I

.field private _promptText:Lorg/apache/poi/hssf/record/common/UnicodeString;

.field private _promptTitle:Lorg/apache/poi/hssf/record/common/UnicodeString;

.field private _regions:Lorg/apache/poi/ss/util/CellRangeAddressList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lorg/apache/poi/hssf/record/common/UnicodeString;

    const-string v1, "\u0000"

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/common/UnicodeString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hssf/record/DVRecord;->NULL_TEXT_STRING:Lorg/apache/poi/hssf/record/common/UnicodeString;

    .line 71
    new-instance v0, Lorg/apache/poi/util/BitField;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/hssf/record/DVRecord;->opt_data_type:Lorg/apache/poi/util/BitField;

    .line 72
    new-instance v0, Lorg/apache/poi/util/BitField;

    const/16 v1, 0x70

    invoke-direct {v0, v1}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/hssf/record/DVRecord;->opt_error_style:Lorg/apache/poi/util/BitField;

    .line 73
    new-instance v0, Lorg/apache/poi/util/BitField;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/hssf/record/DVRecord;->opt_string_list_formula:Lorg/apache/poi/util/BitField;

    .line 74
    new-instance v0, Lorg/apache/poi/util/BitField;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/hssf/record/DVRecord;->opt_empty_cell_allowed:Lorg/apache/poi/util/BitField;

    .line 75
    new-instance v0, Lorg/apache/poi/util/BitField;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/hssf/record/DVRecord;->opt_suppress_dropdown_arrow:Lorg/apache/poi/util/BitField;

    .line 76
    new-instance v0, Lorg/apache/poi/util/BitField;

    const/high16 v1, 0x40000

    invoke-direct {v0, v1}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/hssf/record/DVRecord;->opt_show_prompt_on_cell_selected:Lorg/apache/poi/util/BitField;

    .line 77
    new-instance v0, Lorg/apache/poi/util/BitField;

    const/high16 v1, 0x80000

    invoke-direct {v0, v1}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/hssf/record/DVRecord;->opt_show_error_on_invalid_value:Lorg/apache/poi/util/BitField;

    .line 78
    new-instance v0, Lorg/apache/poi/util/BitField;

    const/high16 v1, 0x700000

    invoke-direct {v0, v1}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/hssf/record/DVRecord;->opt_condition_operator:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>(IIIZZZZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/util/CellRangeAddressList;)V
    .locals 3
    .param p1, "validationType"    # I
    .param p2, "operator"    # I
    .param p3, "errorStyle"    # I
    .param p4, "emptyCellAllowed"    # Z
    .param p5, "suppressDropDownArrow"    # Z
    .param p6, "isExplicitList"    # Z
    .param p7, "showPromptBox"    # Z
    .param p8, "promptTitle"    # Ljava/lang/String;
    .param p9, "promptText"    # Ljava/lang/String;
    .param p10, "showErrorBox"    # Z
    .param p11, "errorTitle"    # Ljava/lang/String;
    .param p12, "errorText"    # Ljava/lang/String;
    .param p13, "formula1"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;
    .param p14, "formula2"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;
    .param p15, "regions"    # Lorg/apache/poi/ss/util/CellRangeAddressList;

    .prologue
    .line 85
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 56
    const/16 v2, 0x3fe0

    iput-short v2, p0, Lorg/apache/poi/hssf/record/DVRecord;->_not_used_1:S

    .line 60
    const/4 v2, 0x0

    iput-short v2, p0, Lorg/apache/poi/hssf/record/DVRecord;->_not_used_2:S

    .line 87
    const/4 v1, 0x0

    .line 88
    .local v1, "flags":I
    sget-object v2, Lorg/apache/poi/hssf/record/DVRecord;->opt_data_type:Lorg/apache/poi/util/BitField;

    invoke-virtual {v2, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result v1

    .line 89
    sget-object v2, Lorg/apache/poi/hssf/record/DVRecord;->opt_condition_operator:Lorg/apache/poi/util/BitField;

    invoke-virtual {v2, v1, p2}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result v1

    .line 90
    sget-object v2, Lorg/apache/poi/hssf/record/DVRecord;->opt_error_style:Lorg/apache/poi/util/BitField;

    invoke-virtual {v2, v1, p3}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result v1

    .line 91
    sget-object v2, Lorg/apache/poi/hssf/record/DVRecord;->opt_empty_cell_allowed:Lorg/apache/poi/util/BitField;

    invoke-virtual {v2, v1, p4}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v1

    .line 92
    sget-object v2, Lorg/apache/poi/hssf/record/DVRecord;->opt_suppress_dropdown_arrow:Lorg/apache/poi/util/BitField;

    invoke-virtual {v2, v1, p5}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v1

    .line 93
    sget-object v2, Lorg/apache/poi/hssf/record/DVRecord;->opt_string_list_formula:Lorg/apache/poi/util/BitField;

    invoke-virtual {v2, v1, p6}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v1

    .line 94
    sget-object v2, Lorg/apache/poi/hssf/record/DVRecord;->opt_show_prompt_on_cell_selected:Lorg/apache/poi/util/BitField;

    invoke-virtual {v2, v1, p7}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v1

    .line 95
    sget-object v2, Lorg/apache/poi/hssf/record/DVRecord;->opt_show_error_on_invalid_value:Lorg/apache/poi/util/BitField;

    invoke-virtual {v2, v1, p10}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v1

    .line 96
    iput v1, p0, Lorg/apache/poi/hssf/record/DVRecord;->_option_flags:I

    .line 97
    invoke-static {p8}, Lorg/apache/poi/hssf/record/DVRecord;->resolveTitleText(Ljava/lang/String;)Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hssf/record/DVRecord;->_promptTitle:Lorg/apache/poi/hssf/record/common/UnicodeString;

    .line 98
    invoke-static {p9}, Lorg/apache/poi/hssf/record/DVRecord;->resolveTitleText(Ljava/lang/String;)Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hssf/record/DVRecord;->_promptText:Lorg/apache/poi/hssf/record/common/UnicodeString;

    .line 99
    invoke-static {p11}, Lorg/apache/poi/hssf/record/DVRecord;->resolveTitleText(Ljava/lang/String;)Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hssf/record/DVRecord;->_errorTitle:Lorg/apache/poi/hssf/record/common/UnicodeString;

    .line 100
    invoke-static {p12}, Lorg/apache/poi/hssf/record/DVRecord;->resolveTitleText(Ljava/lang/String;)Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hssf/record/DVRecord;->_errorText:Lorg/apache/poi/hssf/record/common/UnicodeString;

    .line 101
    invoke-static/range {p13 .. p13}, Lorg/apache/poi/ss/formula/Formula;->create([Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hssf/record/DVRecord;->_formula1:Lorg/apache/poi/ss/formula/Formula;

    .line 102
    invoke-static/range {p14 .. p14}, Lorg/apache/poi/ss/formula/Formula;->create([Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hssf/record/DVRecord;->_formula2:Lorg/apache/poi/ss/formula/Formula;

    .line 103
    move-object/from16 v0, p15

    iput-object v0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_regions:Lorg/apache/poi/ss/util/CellRangeAddressList;

    .line 104
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 3
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .prologue
    .line 106
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 56
    const/16 v2, 0x3fe0

    iput-short v2, p0, Lorg/apache/poi/hssf/record/DVRecord;->_not_used_1:S

    .line 60
    const/4 v2, 0x0

    iput-short v2, p0, Lorg/apache/poi/hssf/record/DVRecord;->_not_used_2:S

    .line 108
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lorg/apache/poi/hssf/record/DVRecord;->_option_flags:I

    .line 110
    invoke-static {p1}, Lorg/apache/poi/hssf/record/DVRecord;->readUnicodeString(Lorg/apache/poi/hssf/record/RecordInputStream;)Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hssf/record/DVRecord;->_promptTitle:Lorg/apache/poi/hssf/record/common/UnicodeString;

    .line 111
    invoke-static {p1}, Lorg/apache/poi/hssf/record/DVRecord;->readUnicodeString(Lorg/apache/poi/hssf/record/RecordInputStream;)Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hssf/record/DVRecord;->_errorTitle:Lorg/apache/poi/hssf/record/common/UnicodeString;

    .line 112
    invoke-static {p1}, Lorg/apache/poi/hssf/record/DVRecord;->readUnicodeString(Lorg/apache/poi/hssf/record/RecordInputStream;)Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hssf/record/DVRecord;->_promptText:Lorg/apache/poi/hssf/record/common/UnicodeString;

    .line 113
    invoke-static {p1}, Lorg/apache/poi/hssf/record/DVRecord;->readUnicodeString(Lorg/apache/poi/hssf/record/RecordInputStream;)Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hssf/record/DVRecord;->_errorText:Lorg/apache/poi/hssf/record/common/UnicodeString;

    .line 115
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    .line 116
    .local v0, "field_size_first_formula":I
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v2

    iput-short v2, p0, Lorg/apache/poi/hssf/record/DVRecord;->_not_used_1:S

    .line 121
    invoke-static {v0, p1}, Lorg/apache/poi/ss/formula/Formula;->read(ILorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hssf/record/DVRecord;->_formula1:Lorg/apache/poi/ss/formula/Formula;

    .line 123
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v1

    .line 124
    .local v1, "field_size_sec_formula":I
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v2

    iput-short v2, p0, Lorg/apache/poi/hssf/record/DVRecord;->_not_used_2:S

    .line 127
    invoke-static {v1, p1}, Lorg/apache/poi/ss/formula/Formula;->read(ILorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hssf/record/DVRecord;->_formula2:Lorg/apache/poi/ss/formula/Formula;

    .line 130
    new-instance v2, Lorg/apache/poi/ss/util/CellRangeAddressList;

    invoke-direct {v2, p1}, Lorg/apache/poi/ss/util/CellRangeAddressList;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    iput-object v2, p0, Lorg/apache/poi/hssf/record/DVRecord;->_regions:Lorg/apache/poi/ss/util/CellRangeAddressList;

    .line 131
    return-void
.end method

.method private static appendFormula(Ljava/lang/StringBuffer;Ljava/lang/String;Lorg/apache/poi/ss/formula/Formula;)V
    .locals 5
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "f"    # Lorg/apache/poi/ss/formula/Formula;

    .prologue
    const/16 v4, 0xa

    .line 264
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 266
    if-nez p2, :cond_1

    .line 267
    const-string v2, "<empty>\n"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 275
    :cond_0
    return-void

    .line 270
    :cond_1
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    .line 271
    .local v1, "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 272
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 273
    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/ptg/Ptg;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 272
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static formatTextTitle(Lorg/apache/poi/hssf/record/common/UnicodeString;)Ljava/lang/String;
    .locals 3
    .param p0, "us"    # Lorg/apache/poi/hssf/record/common/UnicodeString;

    .prologue
    .line 256
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString;->getString()Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-nez v1, :cond_0

    .line 258
    const-string v0, "\'\\0\'"

    .line 260
    .end local v0    # "str":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private static getUnicodeStringSize(Lorg/apache/poi/hssf/record/common/UnicodeString;)I
    .locals 3
    .param p0, "us"    # Lorg/apache/poi/hssf/record/common/UnicodeString;

    .prologue
    .line 324
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString;->getString()Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    :goto_0
    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x3

    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static readUnicodeString(Lorg/apache/poi/hssf/record/RecordInputStream;)Lorg/apache/poi/hssf/record/common/UnicodeString;
    .locals 1
    .param p0, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .prologue
    .line 317
    new-instance v0, Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/common/UnicodeString;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0
.end method

.method private static resolveTitleString(Lorg/apache/poi/hssf/record/common/UnicodeString;)Ljava/lang/String;
    .locals 1
    .param p0, "us"    # Lorg/apache/poi/hssf/record/common/UnicodeString;

    .prologue
    .line 310
    if-eqz p0, :cond_0

    sget-object v0, Lorg/apache/poi/hssf/record/DVRecord;->NULL_TEXT_STRING:Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/common/UnicodeString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    :cond_0
    const/4 v0, 0x0

    .line 313
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString;->getString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static resolveTitleText(Ljava/lang/String;)Lorg/apache/poi/hssf/record/common/UnicodeString;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 303
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 304
    :cond_0
    sget-object v0, Lorg/apache/poi/hssf/record/DVRecord;->NULL_TEXT_STRING:Lorg/apache/poi/hssf/record/common/UnicodeString;

    .line 306
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/common/UnicodeString;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static serializeUnicodeString(Lorg/apache/poi/hssf/record/common/UnicodeString;Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p0, "us"    # Lorg/apache/poi/hssf/record/common/UnicodeString;
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .prologue
    .line 321
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/poi/util/StringUtil;->writeUnicodeString(Lorg/apache/poi/util/LittleEndianOutput;Ljava/lang/String;)V

    .line 322
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 349
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DVRecord;->cloneViaReserialise()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    return-object v0
.end method

.method public getCellRangeAddress()Lorg/apache/poi/ss/util/CellRangeAddressList;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_regions:Lorg/apache/poi/ss/util/CellRangeAddressList;

    return-object v0
.end method

.method public getConditionOperator()I
    .locals 2

    .prologue
    .line 195
    sget-object v0, Lorg/apache/poi/hssf/record/DVRecord;->opt_condition_operator:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/DVRecord;->_option_flags:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    return v0
.end method

.method protected getDataSize()I
    .locals 2

    .prologue
    .line 329
    const/16 v0, 0xc

    .line 330
    .local v0, "size":I
    iget-object v1, p0, Lorg/apache/poi/hssf/record/DVRecord;->_promptTitle:Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-static {v1}, Lorg/apache/poi/hssf/record/DVRecord;->getUnicodeStringSize(Lorg/apache/poi/hssf/record/common/UnicodeString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 331
    iget-object v1, p0, Lorg/apache/poi/hssf/record/DVRecord;->_errorTitle:Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-static {v1}, Lorg/apache/poi/hssf/record/DVRecord;->getUnicodeStringSize(Lorg/apache/poi/hssf/record/common/UnicodeString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 332
    iget-object v1, p0, Lorg/apache/poi/hssf/record/DVRecord;->_promptText:Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-static {v1}, Lorg/apache/poi/hssf/record/DVRecord;->getUnicodeStringSize(Lorg/apache/poi/hssf/record/common/UnicodeString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 333
    iget-object v1, p0, Lorg/apache/poi/hssf/record/DVRecord;->_errorText:Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-static {v1}, Lorg/apache/poi/hssf/record/DVRecord;->getUnicodeStringSize(Lorg/apache/poi/hssf/record/common/UnicodeString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 334
    iget-object v1, p0, Lorg/apache/poi/hssf/record/DVRecord;->_formula1:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/Formula;->getEncodedTokenSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 335
    iget-object v1, p0, Lorg/apache/poi/hssf/record/DVRecord;->_formula2:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/Formula;->getEncodedTokenSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 336
    iget-object v1, p0, Lorg/apache/poi/hssf/record/DVRecord;->_regions:Lorg/apache/poi/ss/util/CellRangeAddressList;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellRangeAddressList;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 337
    return v0
.end method

.method public getDataType()I
    .locals 2

    .prologue
    .line 139
    sget-object v0, Lorg/apache/poi/hssf/record/DVRecord;->opt_data_type:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/DVRecord;->_option_flags:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    return v0
.end method

.method public getEmptyCellAllowed()Z
    .locals 2

    .prologue
    .line 162
    sget-object v0, Lorg/apache/poi/hssf/record/DVRecord;->opt_empty_cell_allowed:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/DVRecord;->_option_flags:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getErrorStyle()I
    .locals 2

    .prologue
    .line 147
    sget-object v0, Lorg/apache/poi/hssf/record/DVRecord;->opt_error_style:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/DVRecord;->_option_flags:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    return v0
.end method

.method public getErrorText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_errorText:Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-static {v0}, Lorg/apache/poi/hssf/record/DVRecord;->resolveTitleString(Lorg/apache/poi/hssf/record/common/UnicodeString;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_errorTitle:Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-static {v0}, Lorg/apache/poi/hssf/record/DVRecord;->resolveTitleString(Lorg/apache/poi/hssf/record/common/UnicodeString;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormula1()[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_formula1:Lorg/apache/poi/ss/formula/Formula;

    invoke-static {v0}, Lorg/apache/poi/ss/formula/Formula;->getTokens(Lorg/apache/poi/ss/formula/Formula;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    return-object v0
.end method

.method public getFormula2()[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_formula2:Lorg/apache/poi/ss/formula/Formula;

    invoke-static {v0}, Lorg/apache/poi/ss/formula/Formula;->getTokens(Lorg/apache/poi/ss/formula/Formula;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    return-object v0
.end method

.method public getListExplicitFormula()Z
    .locals 2

    .prologue
    .line 155
    sget-object v0, Lorg/apache/poi/hssf/record/DVRecord;->opt_string_list_formula:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/DVRecord;->_option_flags:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getPromptText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_promptText:Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-static {v0}, Lorg/apache/poi/hssf/record/DVRecord;->resolveTitleString(Lorg/apache/poi/hssf/record/common/UnicodeString;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPromptTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_promptTitle:Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-static {v0}, Lorg/apache/poi/hssf/record/DVRecord;->resolveTitleString(Lorg/apache/poi/hssf/record/common/UnicodeString;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShowErrorOnInvalidValue()Z
    .locals 2

    .prologue
    .line 186
    sget-object v0, Lorg/apache/poi/hssf/record/DVRecord;->opt_show_error_on_invalid_value:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/DVRecord;->_option_flags:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getShowPromptOnCellSelected()Z
    .locals 2

    .prologue
    .line 178
    sget-object v0, Lorg/apache/poi/hssf/record/DVRecord;->opt_show_prompt_on_cell_selected:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/DVRecord;->_option_flags:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getSid()S
    .locals 1

    .prologue
    .line 341
    const/16 v0, 0x1be

    return v0
.end method

.method public getSuppressDropdownArrow()Z
    .locals 2

    .prologue
    .line 171
    sget-object v0, Lorg/apache/poi/hssf/record/DVRecord;->opt_suppress_dropdown_arrow:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/DVRecord;->_option_flags:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .prologue
    .line 279
    iget v0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_option_flags:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 281
    iget-object v0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_promptTitle:Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-static {v0, p1}, Lorg/apache/poi/hssf/record/DVRecord;->serializeUnicodeString(Lorg/apache/poi/hssf/record/common/UnicodeString;Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 282
    iget-object v0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_errorTitle:Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-static {v0, p1}, Lorg/apache/poi/hssf/record/DVRecord;->serializeUnicodeString(Lorg/apache/poi/hssf/record/common/UnicodeString;Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 283
    iget-object v0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_promptText:Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-static {v0, p1}, Lorg/apache/poi/hssf/record/DVRecord;->serializeUnicodeString(Lorg/apache/poi/hssf/record/common/UnicodeString;Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 284
    iget-object v0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_errorText:Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-static {v0, p1}, Lorg/apache/poi/hssf/record/DVRecord;->serializeUnicodeString(Lorg/apache/poi/hssf/record/common/UnicodeString;Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 285
    iget-object v0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_formula1:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/Formula;->getEncodedTokenSize()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 286
    iget-short v0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_not_used_1:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 287
    iget-object v0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_formula1:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/Formula;->serializeTokens(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 289
    iget-object v0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_formula2:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/Formula;->getEncodedTokenSize()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 290
    iget-short v0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_not_used_2:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 291
    iget-object v0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_formula2:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/Formula;->serializeTokens(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 293
    iget-object v0, p0, Lorg/apache/poi/hssf/record/DVRecord;->_regions:Lorg/apache/poi/ss/util/CellRangeAddressList;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/util/CellRangeAddressList;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 294
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x2c

    .line 229
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 230
    .local v3, "sb":Ljava/lang/StringBuffer;
    const-string v4, "[DV]\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    const-string v4, " options="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget v5, p0, Lorg/apache/poi/hssf/record/DVRecord;->_option_flags:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    const-string v4, " title-prompt="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/poi/hssf/record/DVRecord;->_promptTitle:Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-static {v5}, Lorg/apache/poi/hssf/record/DVRecord;->formatTextTitle(Lorg/apache/poi/hssf/record/common/UnicodeString;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 233
    const-string v4, " title-error="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/poi/hssf/record/DVRecord;->_errorTitle:Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-static {v5}, Lorg/apache/poi/hssf/record/DVRecord;->formatTextTitle(Lorg/apache/poi/hssf/record/common/UnicodeString;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    const-string v4, " text-prompt="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/poi/hssf/record/DVRecord;->_promptText:Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-static {v5}, Lorg/apache/poi/hssf/record/DVRecord;->formatTextTitle(Lorg/apache/poi/hssf/record/common/UnicodeString;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 235
    const-string v4, " text-error="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/poi/hssf/record/DVRecord;->_errorText:Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-static {v5}, Lorg/apache/poi/hssf/record/DVRecord;->formatTextTitle(Lorg/apache/poi/hssf/record/common/UnicodeString;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 237
    const-string v4, "Formula 1:"

    iget-object v5, p0, Lorg/apache/poi/hssf/record/DVRecord;->_formula1:Lorg/apache/poi/ss/formula/Formula;

    invoke-static {v3, v4, v5}, Lorg/apache/poi/hssf/record/DVRecord;->appendFormula(Ljava/lang/StringBuffer;Ljava/lang/String;Lorg/apache/poi/ss/formula/Formula;)V

    .line 238
    const-string v4, "Formula 2:"

    iget-object v5, p0, Lorg/apache/poi/hssf/record/DVRecord;->_formula2:Lorg/apache/poi/ss/formula/Formula;

    invoke-static {v3, v4, v5}, Lorg/apache/poi/hssf/record/DVRecord;->appendFormula(Ljava/lang/StringBuffer;Ljava/lang/String;Lorg/apache/poi/ss/formula/Formula;)V

    .line 239
    const-string v4, "Regions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 240
    iget-object v4, p0, Lorg/apache/poi/hssf/record/DVRecord;->_regions:Lorg/apache/poi/ss/util/CellRangeAddressList;

    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellRangeAddressList;->countRanges()I

    move-result v2

    .line 241
    .local v2, "nRegions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 242
    if-lez v1, :cond_0

    .line 243
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 245
    :cond_0
    iget-object v4, p0, Lorg/apache/poi/hssf/record/DVRecord;->_regions:Lorg/apache/poi/ss/util/CellRangeAddressList;

    invoke-virtual {v4, v1}, Lorg/apache/poi/ss/util/CellRangeAddressList;->getCellRangeAddress(I)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    .line 246
    .local v0, "addr":Lorg/apache/poi/ss/util/CellRangeAddress;
    const/16 v4, 0x28

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 247
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    .end local v0    # "addr":Lorg/apache/poi/ss/util/CellRangeAddress;
    :cond_1
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 250
    const-string v4, "[/DV]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
